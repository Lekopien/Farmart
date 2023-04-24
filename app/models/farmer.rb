class Farmer < ApplicationRecord
    belongs_to :user 
    has_many :customer_farmers
    has_many :customers, through: :customer_farmers
    has_many :products
end
