class Form < ActiveRecord::Base
  before_save :default_values
  after_save :set_admin
  after_save :create_form_values_table

  has_many :permissions
  has_many :users, through: :permissions

  has_many :form_elements
  has_many :element_options, through: :form_elements

  def json_view
    fj = JSON.parse self.to_json

    fj[:form_elements] = FormElement.where(form_id: self.id).all.map{|eo| eo.json_view}

    fj
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
      form_elements.each do |fe|
        fe['form_id'] = new_form.id
        responses.push FormElement.create_from_submission fe.to_hash
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
