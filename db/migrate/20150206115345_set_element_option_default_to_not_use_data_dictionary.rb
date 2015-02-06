class SetElementOptionDefaultToNotUseDataDictionary < ActiveRecord::Migration
  def change
    change_column :element_options, :live, :boolean, default: :true
    change_column :element_options, :uses_dictionary, :boolean, default: :false

    ElementOption.all.each do |eo|
      eo.uses_dictionary = false
      eo.save
    end
  end
end
