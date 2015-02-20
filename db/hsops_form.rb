Permission.create user: User.first, form_id: Form.create.id, edit_entries: true, edit_form: true, view_entries: true
form = Permission.last.form

form.form_name = "HSOPS Sample"
form.save

# language question
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 1, element_name: "element_1_1", element_title: "What language do you use most often to speak or read at work?"

for lang in ["Arabic","English","Chinese","French","Italian","Korean","Spanish","Polish","Russian","Other"] do
  ElementOption.create form_element_id: fe.id, option: lang, position: fe.element_options.count
end

# area/unit question
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 2, element_name: "element_2_1", element_title: "What is your primary work area or unit in this hospital? Select ONE answer."

for opt in ["Many different hospital units/No specific unit","Medicine (non-surgical)","Surgery ","Obstetrics","Pediatrics","Emergency department","Intensive care unit ICU (any type)","Psychiatry/mental health","Rehabilitation","Pharmacy","Laboratory","Radiology","Anesthesiology","not  primarily in Surgery","Other"] do
  ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
end

# agree/disagree
for question in ["People support one another in this unit.",
            "We have enough staff to handle the workload.",
            "When a lot of work needs to be done quickly, we work together as a team to get the work done.",
            "In this unit, people treat each other with respect.",
            "Staff in this unit work longer hours than is best for patient care.",
            "We are actively doing things to improve patient safety.",
            "We use more agency/temporary staff than is best for patient care.",
            "Staff feel like their mistakes are held against them.",
            "Mistakes have led to positive changes here.",
            "It is just by chance that more serious mistakes don’t happen around here.",
            "When one area in this unit gets really busy, others help out.",
            "When an event is reported, it feels like the person is being written up, not the problem.",
            "After we make changes to improve patient safety, we evaluate their effectiveness.",
            "We work in 'crisis mode' trying to do too much, too quickly.",
            "Patient safety is never sacrificed to get more work done.",
            "Staff worry that mistakes they make are kept in their personnel file.",
            "We have patient safety problems in this unit.",
            "Our procedures and systems are good at preventing errors from happening."] do

  fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 2, element_name: "element_2_1", element_title: question

  for opt in [1,2,3,4,5] do
    ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
  end
end





=begin
Vcount = 0
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
=end
binding.pry
