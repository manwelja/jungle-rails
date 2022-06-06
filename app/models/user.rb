class User < ApplicationRecord

  has_secure_password
  validates :password, presence: true, length: { minimum: 3 }
  validates :password_confirmation, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  def self.authenticate_with_credentials(email, password)
    lower_email = email.downcase
    user = User.find_by(email: lower_email)
    user && user.authenticate(password)
  end
end
