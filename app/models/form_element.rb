class FormElement < ActiveRecord::Base
  belongs_to :form

  validates :element_id,        presence: true
  validates :element_name,      presence: true
  validates :element_type_id,   presence: true
end
