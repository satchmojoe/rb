class Permission < ActiveRecord::Base
  before_save :default_values
  belongs_to :form
  belongs_to :user

  validates :user_id,      presence: true
  validates :form_id,      presence: true

  private

  def default_values
    self.edit_form    ||= false
    self.edit_entries ||= false
    self.view_entries ||= false
    nil
  end
end
