class User < ApplicationRecord
  has_many :orders
  has_many :leases
  has_secure_password

  validates :name, :email, :password, :address, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
