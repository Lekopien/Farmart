class Farmer < ApplicationRecord
    has_many :animals
    has_many :lands
    has_secure_password

    validates :farmer_name, :farmer_location, :contact_info, :email, presence: true
    validates :contact_info, numericality: true
    validates :email, uniqueness: true

end
