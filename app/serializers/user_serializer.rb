class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address

  has_many :orders
  # has_many :leases
end
