class Basket < ApplicationRecord
<<<<<<< HEAD
    belongs_to :customer
    has_many :basket_products
    has_many :products, through: :basket_products

  end
=======
  belongs_to :customer
  has_many :basket_products
  has_many :products, through: :basket_products

end
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
