class BasketCustomer < ApplicationRecord
  belongs_to :basket
  belongs_to :customer
end
