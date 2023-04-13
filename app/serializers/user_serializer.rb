class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address
end
