class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :address, :phone, :isAdmin, :farmer, :customer 

  has_one :farmer
  has_one :customer 


  class FarmerSerializer < ActiveModel::Serializer
    attributes :id, :farm
  end

  class CustomerSerializer < ActiveModel::Serializer
    attributes :id
  end

end
