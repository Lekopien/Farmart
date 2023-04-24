class User < ApplicationRecord
has_one :farmer
has_one :customer 

validates :email, presence: true, uniqueness: true
validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

has_secure_password

def define_user_type (user_type, id)
    if user_type == 'farmer' 
        farmer = Farmer.create(user_id: id)
        self.farmer_id = farmer.id
        farmer.save
    
    elsif user_type == 'customer'
        customer = Customer.create(user_id: id) 
        self.customer_id = customer.id
        customer.save
    else 
        user_type == '' 
    end    
end

end 
