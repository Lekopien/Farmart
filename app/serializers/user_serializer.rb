class UserSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :first_name, :last_name, :address, :phone, :isAdmin, :farmer, :customer

  has_one :farmer
  has_one :customer
=======
  attributes :id, :first_name, :last_name, :address, :phone, :isAdmin, :farmer, :customer 

  has_one :farmer
  has_one :customer 
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1


  class FarmerSerializer < ActiveModel::Serializer
    attributes :id, :farm
  end

  class CustomerSerializer < ActiveModel::Serializer
    attributes :id
  end

<<<<<<< HEAD
end
=======
end
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
