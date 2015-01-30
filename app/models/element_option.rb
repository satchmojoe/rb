class ElementOption < ActiveRecord::Base
  belongs_to :form
  belongs_to :form_element
end
