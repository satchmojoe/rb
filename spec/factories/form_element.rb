FactoryGirl.define do

  factory :form_element do
    element_name "name_1_2"
    element_type_id 1
    form_id 1
    element_id { FactoryGirl.generate(:random_id) }
  end
end
