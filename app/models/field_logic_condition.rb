class FieldLogicCondition < ActiveRecord::Base
  validates :rule_condition, inclusion: { in: Rails.application.config.rule_conditions, message: "Not valid condition"}

  belongs_to :form

  belongs_to :target_element, class_name: 'FormElement', foreign_key: 'target_element_id', validate: true

  belongs_to :field_logic_element

  belongs_to :form_element

  def json_view
    JSON.parse self.to_json
  end

  def self.create_or_update_from_submission flc, responses
    if flc['id'] and !flc['id'].blank? and FieldLogicCondition.find(flc['id'])
      responses.push(self.update_from_submission flc, responses)
    else
      responses.push(self.create_from_submission flc, responses)
    end

    responses.compact.empty? ? nil : responses
  end

  def self.update_from_submission flc, responses
    begin
      update_flc = FieldLogicCondition.find flc['id']

      update_flc.update flc

    rescue Exception => e
      Rails.logger.error e.message
      Rails.logger.error e.backtrace

      return {error: {field_logic_condition: e.message}}
    end

    nil
  end

  def self.create_from_submission flc, responses
    begin
      flc.delete 'id'
      flc.delete 'created_at'
      flc.delete 'updated_at'

      new_flc = FieldLogicCondition.new flc

      new_flc.save
    rescue Exception => e
      Rails.logger.error e.message
      Rails.logger.error e.backtrace

      return {error: {field_logic_condition: e.message}}
    end

    nil
  end
end
