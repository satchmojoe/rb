class CreateFieldLogicConditions < ActiveRecord::Migration
  def change
    create_table :field_logic_conditions do |t|
      t.references :form, index: true
      t.integer :target_element_id
      t.references :form_element, index: true
      t.string :rule_condition
      t.string :rule_keyword

      t.timestamps null: false
    end
    add_foreign_key :field_logic_conditions, :forms
  end
end
