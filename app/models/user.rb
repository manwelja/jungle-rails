class User < ApplicationRecord

  has_secure_password
  validates :password, presence: true, length: { minimum: 3 }
  validates :password_confirmation, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
