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

# Save a set of values to the given forms form_values table
  def self.insert_new_form_entry form_id, values
    columns = []
    data  = []
    if ActiveRecord::Base.connection.table_exists?( 'form_' + form_id.to_s)
      if FormValuesTable.validate_columns_from_values form_id, values
        values.each do |value|
          data.push value['value']
          columns.push value['name']
        end
        res = ActiveRecord::Base.connection.execute "insert into form_6 (" + columns.join(",") + ") VALUES ( '" + data.join("','") + "')"

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
    (value_names - columns).empty?
  end

# Get the columns from the form_values table for a given form
  def self.get_forms_value_columns form
    res = ActiveRecord::Base.connection.execute( "select element_position, column_name from INFORMATION_SCHEMA.COLUMNS left join form_elements on column_name = element_name where table_name = 'form_#{form}' order by element_position")
    JSON.parse(res.to_json).map{|e| e['column_name']}
  end

# Form: the form id
# Filters: hash of columns and values to filter by
#   [{col: 'element_1_1', val:'fred'}] => pull back entries where element_1_1 has value 'fred'
  def self.get_all_values form, filters
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
end
