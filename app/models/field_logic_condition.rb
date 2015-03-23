class FieldLogicCondition < ActiveRecord::Base
  validates :rule_condition, inclusion: { in: Rails.application.config.rule_conditions, message: "Not valid condition"}

  belongs_to :form

  belongs_to :target_element, class_name: 'FormElement', foreign_key: 'target_element_id', validate: true

  belongs_to :field_logic_element

  belongs_to :form_element

  def json_view
    JSON.parse self.to_json
  end
end
