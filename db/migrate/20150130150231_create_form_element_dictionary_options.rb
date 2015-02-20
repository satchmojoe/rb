class CreateFormElementDictionaryOptions < ActiveRecord::Migration
  def change
    create_table :form_element_dictionary_options do |t|
      t.references :form, index: true
      t.references :form_element, index: true
      t.references :element_option, index: true
      t.boolean :option_is_default
      t.integer :export_value
      t.string :variable_type

      t.timestamps
    end
  end
end
