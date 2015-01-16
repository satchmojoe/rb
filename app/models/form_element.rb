class FormElement < ActiveRecord::Base
  belongs_to :form
  belongs_to :element_type

  validates :element_id,        presence: true
  validates :element_name,      presence: true
  validates :element_type_id,   presence: true
end
