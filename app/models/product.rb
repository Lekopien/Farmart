class Product < ApplicationRecord
<<<<<<< HEAD
    belongs_to :farmer
    belongs_to :category
    has_many :basket_product
    has_many :basket, through: :basket_product

  end
=======
  belongs_to :farmer
  belongs_to :category
  has_many :basket_product
  has_many :basket, through: :basket_product
  
end
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
