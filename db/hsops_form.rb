# -*- coding: utf-8 -*-
Permission.create user: User.first, form_id: Form.create.id, edit_entries: true, edit_form: true, view_entries: true
form = Permission.last.form

form.form_name = "HSOPS Sample"
form.save

# language question
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 1, element_name: "element_1_1", element_title: "What language do you use most often to speak or read at work?"

for lang in ["Arabic","English","Chinese","French","Italian","Korean","Spanish","Polish","Russian","Other"] do
  ElementOption.create form_element_id: fe.id, option: lang, position: fe.element_options.count
end

# primary language
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 19, element_name: "element_19_1", element_title: "If English is not your primary language, did you receive help to fill out this survey?"

for lang in ["Yes","No","Not Applicable"] do
  ElementOption.create form_element_id: fe.id, option: lang, position: fe.element_options.count
end

# section information
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("section").id, element_id: 25, element_name: "element_25_1", element_title: "SECTION A: Your Work Area/Unit", element_tool_tip: "In this survey, think of your “unit” as the work area, department, or clinical area of the hospital where you spend most of your work time or provide most of your clinical services."

# area/unit question
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 2, element_name: "element_2_1", element_title: "What is your primary work area or unit in this hospital? Select ONE answer."

for opt in ["Many different hospital units/No specific unit","Medicine (non-surgical)","Surgery ","Obstetrics","Pediatrics","Emergency department","Intensive care unit (ICU) - any type","Psychiatry/mental health","Rehabilitation","Pharmacy","Laboratory","Radiology","Anesthesiology","Not primarily in Surgery","Other"] do
  ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
end


# micu/sicu
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 20, element_name: "element_20_1", element_title: "If you chose ICU, please select which type of ICU you work in most often:"

for opt in ["Many different hospital units/No specific unit","MICU/SICU: Combined medical/surgical ICU","CCU: Coronary Care Unit","CVICU: Cardio-vascular ICU","MICU: Medical ICU","NICU: Neonatal ICU","N-ICU: Neuro ICU","PICU: Pediatric ICU","SICU: Surgical ICU","Other: Please explain:"] do
  ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
end

# agree/disagree
m_p_id = FormElement.last.id + 1
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

  fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("matrix").id, element_id: 3, element_name: "element_3_" + (FormElement.where(:element_id => 3).count + 1).to_s, element_title: question, element_matrix_parent_id: m_p_id

  for opt in ["Strongly Disagree","Disagree","Neither", "Agree","Strongly Agree"] do
    ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
  end
end

# agree/disagree 2
m_p_id = FormElement.last.id + 1
for question in ["My supervisor/manager or department chair says a good word when he/she sees a job done according to established patient safety procedures.",
                "My supervisor/manager or department chair seriously considers staff suggestions for improving patient safety.",
                "Whenever pressure builds up, my supervisor/manager or department chair wants us to work faster, even if it means taking shortcuts.",
                "My supervisor/manager or department chair overlooks patient safety problems that happen over and over."] do

  fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("matrix").id, element_id: 4, element_name: "element_4_" + (FormElement.where(:element_id => 4).count + 1).to_s, element_title: question, element_matrix_parent_id: m_p_id

  for opt in ["Strongly Disagree","Disagree","Neither", "Agree","Strongly Agree"] do
    ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
  end
end

# agree/disagree 3
m_p_id = FormElement.last.id + 1
for question in ["We are given feedback about changes put into place based on event reports.",
                  "Staff will freely speak up if they see something that may negatively affect patient care.",
                  "We are informed about errors that happen in this unit.",
                  "Staff feel free to question the decisions or actions of those with more authority.",
                  "In this unit, we discuss ways to prevent errors from happening again.",
                  "Staff are afraid to ask questions when something does not seem right."] do

  fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("matrix").id, element_id: 5, element_name: "element_5_" + (FormElement.where(:element_id => 5).count + 1).to_s, element_title: question, element_matrix_parent_id: m_p_id

  for opt in ["Never","Rarely","Sometimes","Most of the time","Always"] do
    ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
  end
end

# agree/disagree 4
m_p_id = FormElement.last.id + 1
for question in ["When a mistake is made, but is caught and corrected before affecting the patient, how often is this reported?",
                  "When a mistake is made, but has no potential to harm the patient, how often is this reported?",
                  "When a mistake is made that could harm the patient, but does not, how often is this reported?"] do

  fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("matrix").id, element_id: 6, element_name: "element_6_" + (FormElement.where(:element_id => 6).count + 1).to_s, element_title: question, element_matrix_parent_id: m_p_id

  for opt in ["Never","Rarely","Sometimes","Most of the time","Always"] do
    ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
  end
end

# patient saftey grade
m_p_id = FormElement.last.id + 1
for question in ["Please give your work area/unit in this hospital an overall grade on patient safety."] do

  fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("matrix").id, element_id: 4, element_name: "element_4_" + (FormElement.where(:element_id => 4).count + 1).to_s, element_title: question, element_matrix_parent_id: m_p_id

  for opt in ["E","D","C","B","A"] do
    ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
  end
end

# agree/disagree 5
m_p_id = FormElement.last.id + 1
for question in ["Hospital management provides a work climate that promotes patient safety.",
      "Hospital units do not coordinate well with each other.",
      "Things “fall between the cracks” when transferring patients from one unit to another.",
      "There is good cooperation among hospital units that need to work together.",
      "Important patient care information is often lost during shift changes.",
      "It is often unpleasant to work with staff from other hospital units.",
      "Problems often occur in the exchange of information across hospital units.",
      "The actions of hospital management show that patient safety is a top priority.",
      "Hospital management seems interested in patient safety only after an adverse event happens.",
      "Hospital units work well together to provide the best care for patients.",
      "Shift changes are problematic for patients in this hospital."] do

  fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("matrix").id, element_id: 8, element_name: "element_8_" + (FormElement.where(:element_id => 8).count + 1).to_s, element_title: question, element_matrix_parent_id: m_p_id

  for opt in ["Strongly Disagree","Disagree","Neither", "Agree","Strongly Agree"] do
    ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
  end
end

# number of events reported
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 9, element_name: "element_9_1", element_title: "In the past 12 months, how many event reports have you filled out and submitted?"

for opt in ["No event reports",
            "1 to 2 event reports",
            "3 to 5 event reports",
            "6 to 10 event reports",
            "11 to 20 event reports",
            "21 event reports or more"] do
  ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
end

# background info
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 10, element_name: "element_10_1", element_title: "How long have you worked in your current hospital work area/unit?"

for opt in ["Less than 1 year",
            "1 to 5 years",
            "6 to 10 years",
            "11 to 15 years",
            "16 to 20 years",
            "21 years or more"] do
  ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count

end
# background info
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 11, element_name: "element_11_1", element_title: "How long have you worked in this hospital?"

for opt in ["Less than 1 year",
            "1 to 5 years",
            "6 to 10 years",
            "11 to 15 years",
            "16 to 20 years",
            "21 years or more"] do
  ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
end

# hours worked
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 12, element_name: "element_12_1", element_title: "Typically, how many hours per week do you work in this hospital?"

for opt in ["Less than 20 hours per week",
          "20 to 39 hours per week",
          "40 to 59 hours per week",
          "60 to 79 hours per week",
          "80 to 99 hours per week",
          "100 hours per week or more "] do
  ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
end

# position
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 13, element_name: "element_13_1", element_title: "What is your staff position in this hospital?  Select ONE answer that best describes your staff position.", element_choice_has_other: true, element_choice_other_label: "n.  Other, please specify: "

for opt in ["Registered Nurse",
"Physician Assistant/Nurse Practitioner",
"LVN/LPN",
"Patient Care Asst/Hospital Aide/Care Partner",
"Attending/Staff Physician",
"Resident Physician/Physician in Training",
"Pharmacist",
"Dietician",
"Unit Assistant/Clerk/Secretary",
"Respiratory Therapist",
"Physical, Occupational, or Speech Therapist",
"Technician (e.g., EKG, Lab, Radiology)",
"Administration/Management",
"Other"] do

  ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
end

# contact with patients
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 14, element_name: "element_14_1", element_title: "In your staff position, do you typically have direct interaction or contact with patients?"

for opt in ["YES, I typically have direct interaction or contact with patients.",
            "NO, I typically do NOT have direct interaction or contact with patients."] do

  ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
end

#tenure
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("radio").id, element_id: 15, element_name: "element_15_1", element_title: "How long have you worked in your current specialty or profession?"

for opt in ["Less than 1 year",
            "1 to 5 years",
            "6 to 10 years",
            "11 to 15 years",
            "16 to 20 years",
            "21 years or more"] do

  ElementOption.create form_element_id: fe.id, option: opt, position: fe.element_options.count
end

# comments
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("text").id, element_id: 16, element_name: "element_16_1", element_title: "Please feel free to write any comments about patient safety, error, or event reporting in your hospital."

# unit_id
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("number").id, element_id: 17, element_name: "element_17_1", element_title: "unit_id", hidden: true

# hospital_id hospital or institution
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("number").id, element_id: 18, element_name: "element_18_1", element_title: "hospital_id", hidden: true

# department_id
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("number").id, element_id: 22, element_name: "element_22_1", element_title: "department_id", hidden: true

# health_system_id
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("number").id, element_id: 23, element_name: "element_23_1", element_title: "health_system_id", hidden: true

# coordinating_entity_id
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("number").id, element_id: 23, element_name: "element_24_1", element_title: "coordinating_entity_id", hidden: true

# administered_survey_id
fe = FormElement.create form_id: form.id, element_type_id: ElementType.find_by_e_type("number").id, element_id: 24, element_name: "element_25_1", element_title: "administered_survey_id", hidden: true
