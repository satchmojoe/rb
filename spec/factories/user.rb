FactoryGirl.define do
  factory :user do
    password 'testtest'
    password_confirmation 'testtest'
    user_fullname 'full name'
    user_email 'email'
  end
end
