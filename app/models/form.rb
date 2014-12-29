class Form < ActiveRecord::Base
  before_save :default_values
  after_save :confirm_primary_user_exists

  has_many :users, through: :permissions
  has_many :permissions

  private
  def default_values
    raise "no defaults set yet"
  end

  # There must be at least one user who can edit the form. If one is not set, use site admin
  #   However, it should be set to the user who created the form
  def confirm_primary_user_exists
    raise "setup this method you moron"
  end
end
