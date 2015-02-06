class DropFormIdFromElementOption < ActiveRecord::Migration
  def change
    remove_column :element_options, :form_id
  end
end
