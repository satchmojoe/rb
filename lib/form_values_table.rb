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
    change_table ('form_' + element.form_id.to_s).to_sym do |t|
      t.string      element.element_name.to_sym
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
    res = ActiveRecord::Base.connection.execute( "select column_name from INFORMATION_SCHEMA.COLUMNS where table_name = 'form_#{form}'")
    JSON.parse(res.to_json).map{|e| e['column_name']}
  end

  def self.get_all_values form
    if form and ActiveRecord::Base.connection.table_exists?( 'form_' + form.to_s)
      JSON.parse ActiveRecord::Base.connection.execute( "select * from form_#{form}").to_json
    else
      {error: "no value table for that form id"}
    end
  end

  def self.get_single_entry_values form, entry
    if entry and form and ActiveRecord::Base.connection.table_exists?( 'form_' + form.to_s)
      JSON.parse ActiveRecord::Base.connection.execute( "select * from form_#{form} where id = #{entry}").to_json
    else
      {error: "no entries for that form id"}
    end
  end
end
