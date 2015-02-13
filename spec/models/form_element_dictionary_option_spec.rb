require 'rails_helper'

RSpec.describe FormElementDictionaryOption, :type => :model do
  it "should be unique for a given form, form_element and element_option" do
    FactoryGirl.create(:form_element_dictionary_option)
    f1 = FactoryGirl.build(:form_element_dictionary_option)
    expect(f1.valid?).to eq(false)
  end
end
