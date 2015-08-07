class FormElement < ActiveRecord::Base
  before_save :set_element_id
  before_save :set_element_name
  before_save :set_position
  after_save :add_field_to_values_table

  before_create :set_deleted

  belongs_to :form
  belongs_to :element_type
  delegate :e_type, to: :element_type

  has_many :element_options
  has_many :field_logic_elements
  has_many :field_logic_conditions, through: :field_logic_elements

  validates :element_id,        presence: true
  validates :element_name,      presence: true
  validates :element_type_id,   presence: true


  def self.find_by_e_type type
    if type
      FormElement.joins(:element_type).where('element_types.e_type = ?',type)
    else
      []
    end
  end

  def json_view
    fe = JSON.parse self.to_json
    fe[:element_type] = self.element_type.e_type
    fe[:options] = ElementOption.where(form_element_id: self.id).all.sort_by{|eo| eo.position}.map{|eo| eo.json_view}
    fe[:field_logic_elements] = FieldLogicElement.where(form_element_id: self.id).map{|fle| fle.json_view}

    fe
  end

  def self.update_from_submission form_element_data
    if form_element_data['id']
      form_element = FormElement.find form_element_data['id']

      # Some survey front-ends won't send deleted form element, they just remove them from the data set. We
      #   need to assume any previously entered form element that is not in the submitted data set has been
      #   marked for deletion and then set it back to included when it is included in the submitted data
      form_element.deleted = false

      form_element_data.each do |k,v|
        if k != 'id' and k != "created_at" and k != 'form_id' and k != 'options' and k != 'element_type' and k != "field_logic_elements"
          FormElement.update(form_element_data['id'], k => v)
        end
      end

      form_element.element_type_id = ElementType.find_by_e_type(form_element_data['element_type']).id

      form_element.element_options.delete_all

      FormElement.setup_options form_element, form_element_data['options']

      FormElement.setup_logic_elements form_element, form_element_data['field_logic_elements']

      form_element.save
    else
      FormElement.create_from_submission form_element_data
    end

    nil
  end

  def self.setup_options fe, new_options, responses = []
    if !new_options.blank?
      new_options.each do |no|
        no['form_element_id'] = fe.id
        responses.push ElementOption.create_from_submission no.to_hash
      end
    end

    responses.compact.empty? ? nil : responses
  end

  def self.setup_logic_elements fe, logic_elements, responses = []
    if !logic_elements.blank?
      logic_elements.each do |le|
        le['form_element_id'] = fe.id
        responses.push FieldLogicElement.create_or_update_from_submission le.to_hash, responses
      end
    end
    responses.compact.empty? ? nil : responses
  end


# Remove the fields that need to be recursively built or are autofilled, then make the new object
  def self.create_from_submission form_element
    responses = []
    begin
      new_options = form_element['options']
      new_logic_elements = form_element['field_logic_elements']
      element_type = form_element['element_type']

      form_element.delete 'options'
      form_element.delete 'field_logic_elements'
      form_element.delete 'id'
      form_element.delete 'created_at'
      form_element.delete 'updated_at'
      form_element.delete 'element_type'

      new_fe = FormElement.new form_element

      new_fe.element_type_id = ElementType.find_by_e_type(element_type).id

      new_fe.set_element_id
      new_fe.set_element_name
      new_fe.set_position
      new_fe.save

      # This is a refactor to extract out this to a method
      responses.push FormElement.setup_options new_fe, new_options, responses

      responses.push  FormElement.setup_logic_elements new_fe, new_logic_elements

      # Propogate errors up
      if !responses.compact.empty?
        raise "Error: #{responses.to_s}"
      end

    rescue Exception => e
      Rails.logger.error e.message
      Rails.logger.error e.backtrace

      return {error: {form_element: e.message, element_option_errors: responses}}
    end

    nil
  end

  # Set the element_id to be next number for the parent form
  #   Parent form must be set
  def set_element_id
    if self.form_id
      if self.element_id.blank?
      # Set the element_id equal to one higher than highest current element on the form, if any
        self.element_id = 1 + (self.form.form_elements.count > 0 ? self.form.form_elements.map(&:element_id).max : 0)
      end
    else
      false
    end
  end

  def set_element_name
    unless self.element_name
      self.element_name = "element_" + self.element_id.to_s + "_1"
    end
  end

  def set_position
    self.element_position ||= self.form.form_elements.count
  end

  def set_deleted
    self.deleted = false
    true
  end

  def add_field_to_values_table
    FormValuesTable.add_field_to_values_table self
  end
end
