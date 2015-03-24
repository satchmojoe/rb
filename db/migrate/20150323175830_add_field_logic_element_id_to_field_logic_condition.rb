class AddFieldLogicElementIdToFieldLogicCondition < ActiveRecord::Migration
  def change
    add_column :field_logic_conditions, :field_logic_element_id, :integer
  end
end
