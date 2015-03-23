class FieldLogicElement < ActiveRecord::Base
  belongs_to :form
  belongs_to :form_element

  has_many :field_logic_conditions

  def json_view
    fle = JSON.parse self.to_json
    fle[:field_logic_conditions] = FieldLogicCondition.where(field_logic_element_id: self.id).all.map{|flc| flc.json_view}

    fle
  end
end
