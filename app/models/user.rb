class User < ApplicationRecord
  has_many :farmers
  has_many :orders
  has_many :leases
end
