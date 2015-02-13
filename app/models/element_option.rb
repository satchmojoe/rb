class ElementOption < ActiveRecord::Base
  validates :form_element_id, presence: true
  validates :option,          presence: true

  before_save :set_position
  before_save :check_form_element_dictionary

  belongs_to :form_element
  has_one :form, through: :form_element
  delegate :form_id, to: :form_element

  has_one :form_element_dictionary_option
  private

# Make sure the position is set to one higher than the highest in the form_elements set of element options
  def set_position
    if self.form_element and (self.form_element.element_options.count >= 1)
      self.position = self.form_element.element_options.map(&:position).sort.last + 1
    else
      self.position = 0
    end
  end

# Check if there is a dictionary entry, and if so, that its valid
  def check_form_element_dictionary
    if self.uses_dictionary
      if self.form_element_dictionary_option
        if self.form_element_dictionary_option.export_value
          true
        else
          errors.add :data_dictionary, "Cant save ElementOption with DataDictioary when DataDictionary is not fully defined"
          false
        end
      else
        errors.add :data_dictionary, "Cant save ElementOption with DataDictioary when DataDictionary is not fully defined"
        false
      end
    end
  end
end
