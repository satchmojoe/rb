class RemoveLiveFromElementOptions < ActiveRecord::Migration
  def change
    remove_column :element_options, :live
  end
end
