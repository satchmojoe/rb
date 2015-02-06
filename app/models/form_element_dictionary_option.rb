class FormElementDictionaryOption < ActiveRecord::Base
  belongs_to :form
  belongs_to :form_element
  belongs_to :element_option
end
