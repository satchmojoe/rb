require 'rails_helper'

RSpec.describe FormElementDictionaryOption, :type => :model do
  it "should be unique for a given form, form_element and element_option" do
    f1 = FactoryGirl.create(:form_element_dictionary_option)
    f2 = FactoryGirl.build(:form_element_dictionary_option)

    f2.form_id = f1.form_id
    f2.form_element_id = f1.form_element_id
    f2.element_option_id = f1.element_option_id

    expect(f2.valid?).to eq(false)
  end
end
