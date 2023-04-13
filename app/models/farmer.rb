class Farmer < ApplicationRecord
  belongs_to :user
  has_many :animals
  has_many :lands

  validates :farmer_name, presence: true
  validates :farmer_location, presence: true
  validates :contact_info, presence: true 
  # format: { with: /\A\d{3}-\d{4}\z/, message: "must be in the format 123-1234" }
  # [/\A\d{3}-\d{4}\z/]- match three digits, a hyphen, and then four digits
end
