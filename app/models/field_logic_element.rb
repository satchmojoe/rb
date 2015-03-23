class FieldLogicElement < ActiveRecord::Base
  belongs_to :form
  belongs_to :form_element

  has_many :field_logic_conditions

  def json_view
    fle = JSON.parse self.to_json
    fle[:field_logic_conditions] = FieldLogicCondition.where(field_logic_element_id: self.id).all.map{|flc| flc.json_view}

    fle
  end

  def self.create_from_submission le, responses
    begin
      new_logic_conditions = le['field_logic_conditions']

      le.delete 'id'
      le.delete 'created_at'
      le.delete 'updated_at'
      le.delete 'field_logic_conditions'

      new_le = FieldLogicElement.new le
      new_le.save

      responses.push FieldLogicElement.setup_conditions new_logic_conditions, new_le, responses

    rescue Exception => e
      Rails.logger.error e.message
      Rails.logger.error e.backtrace

      return {error: {field_logic_element: e.message}}
    end

    responses.compact.empty? ? nil : responses
  end

  def self.setup_conditions conditions, le, responses = []
    if conditions and !conditions.empty?
      conditions.each do |condition|
        condition['field_logic_element_id'] = le.id
        responses.push FieldLogicCondition.create_from_submission condition, responses
      end
    end

    responses.compact.empty? ? nil : responses
  end
end
