class User < ApplicationRecord
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
end
