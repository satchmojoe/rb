class RemoveOptionIsDefaultFromFormElementDictionaryOption < ActiveRecord::Migration
  def change
    remove_column :form_element_dictionary_options, :option_is_default
  end
end
