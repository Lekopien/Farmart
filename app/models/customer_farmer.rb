class CustomerFarmer < ApplicationRecord
  belongs_to :customer
  belongs_to :farmer
end
