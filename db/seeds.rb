# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Rails.env == 'test'
  User.create priv_administer: true, priv_new_forms: true, enabled: true, password: 'testtest', password_confirmation: 'testtest', user_fullname: 'Full Name', user_email: 'email@email.com'
end
