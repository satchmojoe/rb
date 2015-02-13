class FormElementDictionaryOption < ActiveRecord::Base
  belongs_to :element_option
  has_one :form_element, through: :element_option
  has_one :form, through: :element_option

  validate :custom_uniquess_because_rails_cant


  def custom_uniquess_because_rails_cant
    if FormElementDictionaryOption.where(form_id: self.form_id).count > 0
      if FormElementDictionaryOption.where(form_element_id: self.form_element_id).count > 0
        if FormElementDictionaryOption.where(element_option_id: self.element_option_id).count > 0
          errors.add(:uniquess, "must be unique across form, element and option")
        end
      end
    end
  end
end
