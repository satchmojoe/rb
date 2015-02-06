class ElementOption < ActiveRecord::Base
  validates :form_element_id,      presence: true

  before_save :set_position
  before_save :set_form_id

  belongs_to :form_element
  has_one :form, through: :form_element

  private

# Make sure the position is set to one higher than the highest in the form_elements set of element options
  def set_position
    if self.form_element and (self.form_element.element_options.count >= 1)
      self.position = self.form_element.element_options.map(&:position).sort.last + 1
    else
      self.position = 0
    end
  end
end
