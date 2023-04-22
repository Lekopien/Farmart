class User < ApplicationRecord
<<<<<<< HEAD
  has_many :orders
  has_many :leases
  has_secure_password
  has_many :carts


  validates :name, :email, :password, :address, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  def add_to_cart(animal, land, quantity)
    cart_item = carts.find_or_initialize_by(animal: animal, land: land)
    cart_item.quantity += quantity
    cart_item.price = animal.price + land.price
    cart_item.save
  end
  
  def remove_from_cart(animal, land)
    cart_item = carts.find_by(animal: animal, land: land)
    cart_item.destroy if cart_item.present?
  end
=======
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

>>>>>>> 8b29682a4c72af4ef6ffbcdd43865dca3584621a
end
