class FormElement < ActiveRecord::Base
  before_save :set_element_id
  before_save :set_element_name

  belongs_to :form
  belongs_to :element_type

  has_many :element_options

  validates :element_id,        presence: true
  validates :element_name,      presence: true
  validates :element_type_id,   presence: true

  private

  # Set the element_id to be next number for the parent form
  #   Parent form must be set
  def set_element_id
    if self.form_id
      self.element_id = 1 + self.form.form_elements.map(&:element_id).max
    else
      false
    end
  end

  def set_element_name
    unless self.element_name
      self.element_name = self.element_id.to_s + "_1"
    end
  end
end
