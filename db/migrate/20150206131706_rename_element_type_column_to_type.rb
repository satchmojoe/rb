class RenameElementTypeColumnToType < ActiveRecord::Migration
  def change
   rename_column :element_types, :element_type, :e_type
  end
end
