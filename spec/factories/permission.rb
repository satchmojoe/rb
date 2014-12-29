FactoryGirl.define do
  factory :permission do
    user_id       1
    form_id       1
    edit_form     false
    edit_entries  false
    view_entries  false
  end
end
