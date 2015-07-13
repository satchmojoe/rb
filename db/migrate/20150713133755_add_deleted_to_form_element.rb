class AddDeletedToFormElement < ActiveRecord::Migration
  def change
    add_column :form_elements, :deleted, :boolean
  end
end
