class FormElement < ActiveRecord::Base
  before_save :set_element_id
  before_save :set_element_name

  belongs_to :form
  belongs_to :element_type
  delegate :e_type, to: :element_type

  has_many :element_options

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
    fe[:options] = ElementOption.where(form_element_id: self.id).all.map{|eo| eo.json_view}

    fe
  end

  private

  # Set the element_id to be next number for the parent form
  #   Parent form must be set
  def set_element_id
    if self.form_id
      # Set the element_id equal to one higher than highest current element on the form, if any
      self.element_id = 1 + (self.form.form_elements.count > 0 ? self.form.form_elements.map(&:element_id).max : 0)
    else
      false
    end
  end

  def set_element_name
    unless self.element_name
      self.element_name = "element_" + self.element_id.to_s + "_1"
    end
  end
end
