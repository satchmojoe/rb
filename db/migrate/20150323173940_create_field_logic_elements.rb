class CreateFieldLogicElements < ActiveRecord::Migration
  def change
    create_table :field_logic_elements do |t|
      t.references :form, index: true
      t.references :form_element, index: true
      t.string :rule_show_hide
      t.string :rule_all_any

      t.timestamps null: false
    end
    add_foreign_key :field_logic_elements, :forms
    add_foreign_key :field_logic_elements, :form_elements
  end
end
