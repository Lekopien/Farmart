class Farmer < ApplicationRecord
    has_many :animals
    has_many :lands

    validates :farmer_name, :farmer_location, :contact_info, presence: true
    validates :contact_info, length: { minimum: 10 }

end
