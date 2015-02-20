FactoryGirl.define do
  sequence(:random_id) {|n| @random_ids ||= (1..100000).to_a.shuffle; @random_ids[n] }

  factory :form_element_dictionary_option do
    form_id { FactoryGirl.generate(:random_id) }
    form_element_id { FactoryGirl.generate(:random_id) }
    element_option_id { FactoryGirl.generate(:random_id) }
  end
end
