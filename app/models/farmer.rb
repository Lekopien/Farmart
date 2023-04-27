class Farmer < ApplicationRecord
<<<<<<< HEAD
    belongs_to :user
    has_many :customer_farmers
    has_many :customers, through: :customer_farmers
    has_many :products
end
=======
    belongs_to :user 
    has_many :customer_farmers
    has_many :customers, through: :customer_farmers
    has_many :products
end
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
