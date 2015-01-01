FactoryGirl.define do
  factory :user do
    password 'testtest'
    password_confirmation 'testtest'
    user_fullname 'full name'
    user_email 'email'
  end

  factory :admin, class: 'User' do
    password 'testtest'
    password_confirmation 'testtest'
    user_fullname 'full name'
    user_email 'email'
    priv_administer true
  end
end
