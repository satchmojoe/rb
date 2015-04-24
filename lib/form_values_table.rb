require 'net/http'
require 'net/https'

class FormValuesTable < ActiveRecord::Migration

  def self.create_values_table form_id
    if form_id.class == Fixnum and !ActiveRecord::Base.connection.table_exists?( 'form_' + form_id.to_s)
      create_table ('form_' + form_id.to_s).to_sym do |t|
        t.boolean     :enabled
        t.string      :resume_key

        t.timestamps
      end
    end
  end

  def self.add_field_to_values_table element
    columns = FormValuesTable.get_forms_value_columns element.form_id

    if !(columns.include? element.element_name)
      change_table ('form_' + element.form_id.to_s).to_sym do |t|
        t.string      element.element_name.to_sym
      end
    end
  end

# Update a given entry in a form
  def self.update_form_entry form_id, entry_id, values
    columns = []
    data  = []
    if ActiveRecord::Base.connection.table_exists?( 'form_' + form_id.to_s)
      if FormValuesTable.validate_columns_from_values form_id, values
        FormValuesTable.fix_times(values, false).each do |value|
          # It's crucial these two arrays stay ordered the same!!!
          data.push value['value']
          columns.push value['name']
        end
        res = FormValuesTable.clean_up_update data, columns
        data = res[0]
        columns = res[1]

        columns.push 'id'
        data.push entry_id

        if data.length == columns.length
          ActiveRecord::Base.connection.execute "delete from form_#{form_id} where id = #{entry_id}"
          res = ActiveRecord::Base.connection.execute "insert into form_#{form_id} (" + columns.join(",") + ") VALUES ( '" + data.join("','") + "')"

          # Return the string value of the result status
          res.res_status res.result_status
        else
          "Error: something went wrong cleaning up the timestamps before running the update"
        end
      else
        "Error: form submitted with columns not present in the values table"
      end
    else
      "Error: that form doesn't exist or have a values table you pathetic, useless excuse for a left-handed football bat!"
    end
  end

# Save a set of values to the given forms form_values table
  def self.insert_new_form_entry form_id, values
    columns = []
    data  = []
    if ActiveRecord::Base.connection.table_exists?( 'form_' + form_id.to_s)
      if FormValuesTable.validate_columns_from_values form_id, values
        FormValuesTable.fix_times(values, true).each do |value|
          data.push value['value']
          columns.push value['name']
        end

        res = ActiveRecord::Base.connection.execute "insert into form_#{form_id} (" + columns.join(",") + ") VALUES ( '" + data.join("','") + "')"

        # Return the string value of the result status
        res.res_status res.result_status
      else
        "Error: form submitted with columns not present in the values table"
      end
    else
      "Error: that form doesn't exist or have a values table you pathetic, useless excuse for a left-handed football bat!"
    end
  end

  def self.validate_columns_from_values form, values
    columns = FormValuesTable.get_forms_value_columns form
    value_names = values.map{|e| e['name']}
    # Make sure every value submitted has a column in the DB
    if (value_names - columns).empty?
      true
    else
      Rails.logger.error "These columns do not match:"
      Rails.logger.error puts(value_names - columns)
      false
    end
  end

  def self.get_key
    # this needs to be an environment variable that gives the address of the key
    File.read ENV['KEY_PATH']

=begin
    url = URI.parse('path-to-where-key-will-be-hosted')
    req = Net::HTTP::Get.new(url.to_s)
      res = Net::HTTP.start(url.host, url.port) {|http|
          http.request(req)
      }
    res.body
=end
  end

# Get the columns from the form_values table for a given form
  def self.get_forms_value_columns form
    res = ActiveRecord::Base.connection.execute( "select element_position, column_name from INFORMATION_SCHEMA.COLUMNS left join form_elements on column_name = element_name where table_name = 'form_#{form}' order by element_position")
    JSON.parse(res.to_json).map{|e| e['column_name']}
  end

  # allow users to use element_title for filters rather than the more cryptic colum name
  def self.convert_element_titles_to_column_names(filters,form_id)
    column_lookups = FormElement.where("element_title in (?) and form_id = ?", filters.collect{|f| f[:col]}, form_id).group_by(&:element_title)
    new_filters = []
    filters.collect do |filter|
      # if not a element_title throw an error
      if !filter[:col].in? FormValuesTable.non_filter_params
        if column_lookups.has_key? filter[:col]
          new_filters.push({ col: column_lookups[filter[:col]].first.element_name, val: filter[:val] })
        else
          raise "Element title #{filter[:col]} does not exist"
        end
      end
    end
    new_filters.compact
  end

# Form: the form id
# Filters: hash of columns and values to filter by
#   [{col: 'element_1_1', val:'fred'}] => pull back entries where element_1_1 has value 'fred'
  def self.get_all_values form, filters
    filters = self.convert_element_titles_to_column_names(filters, form)

    if filters
      columns       = FormValuesTable.get_forms_value_columns form
      query_string  = FormValuesTable.set_query_string form, filters, columns

      Rails.logger.debug "Query string is: " + query_string
      begin
        if form and ActiveRecord::Base.connection.table_exists?( 'form_' + form.to_s) and !query_string.blank?
          data = JSON.parse ActiveRecord::Base.connection.execute( query_string).to_json
          titles = JSON.parse ActiveRecord::Base.connection.execute("select element_position, column_name, element_title from INFORMATION_SCHEMA.COLUMNS left join form_elements on column_name = element_name where table_name = 'form_#{form}' order by element_position").to_json
          JSON.parse({data: data, titles: titles}.to_json)
        else
          {error: "no value table for that form id"}
        end
      rescue Exception => e
        Rails.logger.error e.message
        Rails.logger.error e.backtrace
        {error: "error in query string, check params", message: e.message}
      end
    else
      { error: "Element title #{filter[:col]} does not exist"}
    end
  end

  def self.set_query_string form, filters, columns
    query_string = ""
    # Sanity check to make sure we're given a number
    if form.to_s.match(/[a-zA-Z]/) == nil
      query_string.concat "select #{columns.join(", ")} from form_#{form}"
    end

    if filters.class == Array and !filters.empty?
      query_string.concat " where "

      filters.each do |filter|
        query_string.concat (" " + filter[:col] + " = '" + filter[:val] + "' and ")
      end

      query_string = query_string[0..-5]

    end
    query_string
  end

  def self.get_single_entry_values form, entry
    if entry and form and ActiveRecord::Base.connection.table_exists?( 'form_' + form.to_s)
      JSON.parse ActiveRecord::Base.connection.execute( "select * from form_#{form} where id = #{entry}").to_json
    else
      {error: "no entries for that form id"}
    end
  end

  # Find the timestamp entries and remove them before updating
  def self.clean_up_update data, columns
    # Clean up the 'enabled' column
    index = columns.index 'enabled'
    if index and data[index].blank? and columns.length == data.length
      data[index] = true
    end

    [data, columns]
  end

  def self.delete_form_entry form_id, entry_id
    res = ActiveRecord::Base.connection.execute "select count(*) from form_#{form_id} where id = #{entry_id}"
    count = JSON.parse(res.to_json)[0]['count'].to_i

    if count > 0
      ActiveRecord::Base.connection.execute "delete from form_#{form_id} where id = #{entry_id}"

      results = "deleted"
    else
      results = "no matching records found"
    end

    {results: results}.to_json
  end

  def self.build_count_query_with_filters form, filters
    query_strings = []

    filters.each do |filter|
      q = "select element_name from form_elements where element_title = '#{filter[:col]}'"
      element_name = JSON.parse(ActiveRecord::Base.connection.execute(q).to_json)[0]["element_name"]
      query_strings.push  " #{element_name} = '#{filter[:val]}' "
    end

    query_strings.empty? ? 'true' : query_strings.join(" and ")
  end

  def self.count_with_matching_filters form, filters
    parsed_filters = self.convert_element_titles_to_column_names(filters, form)

    if filters
      # Original query selects all columns, we just need the count
      query_string = "select count(*) from  form_#{form} where " + FormValuesTable.build_count_query_with_filters(form, filters)

      begin
        if form and ActiveRecord::Base.connection.table_exists?( 'form_' + form.to_s) and !query_string.blank?
          data = JSON.parse ActiveRecord::Base.connection.execute( query_string).to_json
          JSON.parse data[0].to_json
        else
          {error: "no value table for that form id"}
        end
      rescue Exception => e
        Rails.logger.error e.message
        Rails.logger.error e.backtrace
        {error: "error in query string, check params", message: e.message}
      end
    else
      { error: "Element title #{filter[:col]} does not exist"}
    end
  end

  def self.non_filter_params
    ['group_field','group_by','last_distinct_entry_element']
  end

  def self.fix_times data, add_created
    updated = false
    data.each do |d|
      if d['name'] == 'updated_at'
        d['value'] = Time.zone.now
        updated = true
      end
    end

    if !updated
      data.push( {'value' => Time.zone.now, 'name' => 'updated_at'})
    end

    if add_created
      data.push( {'value' => Time.zone.now, 'name' => 'created_at'})
    end

    data
  end

  def self.handle_hipaa data, dir
    key = FormValuesTable.get_key
    http = Net::HTTP.new('www.mysite.com', 443)
    http.use_ssl = true

    path = "http://10.173.13.183/#{dir}"
    post_data= "key=#{key}&data=#{data}"

    headers = {'Content-Type'=> 'application/x-www-form-urlencoded'}

    resp, data = http.post(path, data, headers)

    puts 'Code = ' + resp.code
    puts 'Message = ' + resp.message
    resp.each {|key, val| puts key + ' = ' + val}
    puts data
  end

end
