class AddHiddenToFormElements < ActiveRecord::Migration
  def change
    add_column :form_elements, :hidden, :boolean, default: false
  end
end
