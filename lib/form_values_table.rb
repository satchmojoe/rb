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
end
