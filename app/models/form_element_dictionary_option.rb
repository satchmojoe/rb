class FormElementDictionaryOption < ActiveRecord::Base
  belongs_to :element_option
  has_one :form_element, through: :element_option
  has_one :form, through: :element_option
end
