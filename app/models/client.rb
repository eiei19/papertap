class Client < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :email, email: true
end