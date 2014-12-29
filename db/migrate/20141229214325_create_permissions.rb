class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions, id: false do |t|
      t.references :form, index: true
      t.references :user, index: true
      t.boolean :edit_form
      t.boolean :edit_entries
      t.boolean :view_entries
      t.primary_key :permission_id

      t.timestamps
    end
  end
end
