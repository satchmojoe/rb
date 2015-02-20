# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def prompt(*args)
  print(*args)
  STDIN.gets
end

# Universal seed data
puts "Setting up initial element_type data"
for type in ['text','radio','text_area','select','checkbox','date','datetime','number','tel'] do
  ElementType.create e_type: type
end

# Tests require an admin user
if Rails.env == 'test'
  User.create priv_administer: true, priv_new_forms: true, enabled: true, password: 'testtest', password_confirmation: 'testtest', user_fullname: 'Full Name', user_email: 'email@email.com'
end

#Setup the initial user for environments
if Rails.env == 'development' || Rails.env == 'test'
  name = 'joe' #prompt("Please provide an admin name:").chomp
  email = 'joe@joe.com' # prompt("Please provide an admin email:").chomp
  pw = 'changeme' #prompt("Please provide an admin password:").chomp

  puts "Creating initial admin user"
  User.create priv_administer: true, priv_new_forms: true, enabled: true, password: pw, password_confirmation: pw, user_fullname: name, user_email: email
else
  name = prompt("Please provide an admin name:").chomp
  email = prompt("Please provide an admin email:").chomp
  pw = prompt("Please provide an admin password:").chomp

  puts "Creating initial admin user"
  User.create priv_administer: true, priv_new_forms: true, enabled: true, password: pw, password_confirmation: pw, user_fullname: name, user_email: email
end

#Some filler data for dev
if Rails.env == 'development' or Rails.env == 'test'
  for i in 0..4 do
    puts "Setting up sample form with elements"

    Permission.create user: User.first, form_id: Form.create.id, edit_entries: true, edit_form: true, view_entries: true
    form = Permission.last.form

    form.form_name = "Seed Form #{i}"
    form.save

    count = 0
    ElementType.all.each do |type|
      FormElement.create form_id: form.id, element_type_id: type.id, element_id: count, element_name: "element_ " + count.to_s + "_1"
      count += 1
    end

    for type in ['radio','select','checkbox'] do
      for option in ['dog','cat','spider','sharks with freakin lasers on their head'] do
        ElementOption.create form_element_id: FormElement.where("form_id = ? and element_type_id = ?",form.id, ElementType.where(e_type: type).first.id).first.id, option: option
      end
    end

    ElementOption.all.each do |eo|
      eo.uses_dictionary = true
      eo.save

      FormElementDictionaryOption.create form_element_id: eo.form_element_id, element_option_id: eo.id, export_value: ElementOption.where(form_element_id: eo.form_element_id).to_a.index(eo)
    end
  end
end
