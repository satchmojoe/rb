class FieldLogicCondition < ActiveRecord::Base
  validates :rule_condition, inclusion: { in: Rails.application.config.rule_conditions, message: "Not valid condition"}
  belongs_to :form

  belongs_to :target_element, class_name: 'FormElement', foreign_key: 'target_element_id', validate: true

  belongs_to :form_element
end
