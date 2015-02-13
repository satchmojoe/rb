class FormElementDictionaryOption < ActiveRecord::Base
  belongs_to :element_option
  has_one :form_element, through: :element_option
  has_one :form, through: :element_option
  before_save :set_form_id

  validates :element_option_id, uniqueness: true

  def set_form_id
    if self.element_option_id and !self.form_id
      self.form_id = ElementOption.find(self.element_option_id).form.id
    end
  end
end
