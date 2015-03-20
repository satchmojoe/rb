class AddWarnIfEmptyToFormElements < ActiveRecord::Migration
  def change
    add_column :form_elements, :warn_if_empty, :boolean, default: false
  end
end
