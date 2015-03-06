FactoryGirl.define do
  factory :form do
    form_name 'test'
    form_description 'test'

    before :build do
      self.form_elements << FactoryGirl.build(:form_element, form_id: self.id)
    end
  end
end
