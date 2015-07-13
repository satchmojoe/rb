class AddDeletedToElementOptions < ActiveRecord::Migration
  def change
    add_column :element_options, :deleted, :boolean
  end
end
