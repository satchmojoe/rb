class SetDefaultPermissionFields < ActiveRecord::Migration
  def change
    change_column :permissions, :edit_form, :boolean, default: false
    change_column :permissions, :edit_entries, :boolean, default: false
    change_column :permissions, :view_entries, :boolean, default: false
  end
end
