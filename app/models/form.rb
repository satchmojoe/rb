class Form < ActiveRecord::Base
  before_save :default_values
  after_save :set_admin
  after_save :create_form_values_table

  has_many :users, through: :permissions
  has_many :permissions
  has_many :form_elements
  has_many :element_options

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
      Permisison.create form_id: self_id, user_id: User.where(priv_administer: true).first.id
    end
  end

  def create_form_values_table
    FormValuesTable.create_values_table self.id
  end
end
