class User < ActiveRecord::Base
  before_save :default_values

  has_secure_password
  validates :password,        length: {minimum: 8}
  validates :user_fullname,   presence: true
  validates :password_digest, presence: true
  validates :user_email,      presence: true

  private

  def default_values
    self.priv_administer  ||= false
    self.priv_new_forms   ||= false
    self.enabled          ||= true
  end
end
