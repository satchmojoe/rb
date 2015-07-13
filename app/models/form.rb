class Form < ActiveRecord::Base
  before_save :default_values
  after_save :set_admin
  after_save :create_form_values_table

  has_many :permissions
  has_many :users, through: :permissions

  has_many :form_elements
  has_many :element_options, through: :form_elements
  has_many :field_logic_elements, through: :form_elements

  def json_view
    fj = JSON.parse self.to_json

    fj[:form_elements] = FormElement.where(form_id: self.id).where(deleted: false).all.sort_by{|fe| fe.element_position}.map{|eo| eo.json_view}

    fj[:logic_rule_conditions] = Rails.application.config.rule_conditions

    fj
  end

  def self.update_from_submission form_data
    form = Form.find form_data['id']

    form_data.each do |k,v|
      if k != 'id' and k != "created_at" and k != 'form_elements'
        Form.update(form_data['id'], k => v)
      end
    end

    # Some survey front-ends won't send deleted form element, they just remove them from the data set. We
    #   need to assume any previously entered form element that is not in the submitted data set has been
    #   marked for deletion and then set it back to included when it is included in the submitted data
    form.form_elements.each{|e| e.update_attribute(:deleted, true)}

    form_data['form_elements'].each do |data|
      FormElement.update_from_submission data
    end

    Form.find(form_data['id']).json_view
  end

# Remove the fields that need to be recursively built or are autofilled, then make the new object
  def self.create_from_submission form
    begin
      form_elements = form['form_elements']
      form.delete 'form_elements'
      form.delete 'id'
      form.delete 'created_at'
      form.delete 'updated_at'
      new_form = Form.new form

      new_form.save

      responses = []
      if form_elements and form_elements.length > 0
        form_elements.each do |fe|
          fe['form_id'] = new_form.id
          responses.push FormElement.create_from_submission fe.to_hash
        end
      end

      # Propogate errors up
      if responses.compact.empty?
        Form.find(new_form.id).json_view
      else
        raise responses
      end
    rescue Exception => e
      Utils.clean_up_failed_post new_form.id

      Rails.logger.error e.message
      Rails.logger.error e.backtrace
      return {error: {form_element: e.message, form_element_errors: responses.compact}}
    end
  end

  def self.delete_form form_id
    begin
      # Gather everything up
      form = Form.find form_id
      form_elements = form.form_elements

      element_options = []
      form_elements.each do |fe|
        element_options.push fe.element_options
      end
      element_options.flatten!

      # Slash and burn!!! or just delete...that's ok too
      element_options.each do |eo|
        eo.form_element_dictionary_option.delete if eo.form_element_dictionary_option
        eo.delete
      end

      form_elements.each do |fe|
        fe.delete
      end

      form.delete

      ActiveRecord::Base.connection.execute "drop table form_#{form_id}"
      "done deleting form #{form_id}"
    rescue Exception => e
      Rails.logger.error e.message
      Rails.logger.error e.backtrace
      return {error: {form: form_id, message: e.message}}
    end

  end

  private

  # These values will need to be updated as their functional elements get updated. For example, if
  #   a field is assigned logic, change the value of 'logic_field_enable'
  def default_values
    self.form_redirect_enable || false
    self.form_resume_enable   || false
    self.form_limit_enable    || false
    self.form_schedule_enable || false
    self.email_entry_enable   || false
    self.logic_field_enable   || false

    nil
  end

  # There must be at least one user who can edit the form. If one is not set, use site admin
  #   However, it should be set to the user who created the form
  def set_admin
    form_admins = (Permission.where(form_id: self.id).where(edit_form: true).map(&:user) + User.where(priv_administer: true)).uniq
    if form_admins.length == 0
      Permission.create form_id: self.id, user_id: User.where(priv_administer: true).first.id
    end
  end

  def create_form_values_table
    FormValuesTable.create_values_table self.id
  end
end
