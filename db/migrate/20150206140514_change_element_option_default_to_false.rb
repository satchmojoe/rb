class ChangeElementOptionDefaultToFalse < ActiveRecord::Migration
  def change
    change_column :element_options, :option_is_default, :boolean, default: false
  end
end
