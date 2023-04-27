class Basket < ApplicationRecord
  belongs_to :customer
  has_many :basket_products
  has_many :products, through: :basket_products

end
