class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.references :form, index: true
      t.references :user, index: true
      t.boolean :edit_form
      t.boolean :edit_entries
      t.boolean :view_entries

      t.timestamps
    end
  end
end
