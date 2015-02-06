class AddUsesDictionaryToElementOptions < ActiveRecord::Migration
  def change
    add_column :element_options, :uses_dictionary, :boolean
  end
end
