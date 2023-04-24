class Product < ApplicationRecord
  belongs_to :farmer
  belongs_to :category
  has_many :basket_product
  has_many :basket, through: :basket_product
  
end
