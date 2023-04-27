class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :basket
<<<<<<< HEAD

  has_one :basket

  class BasketSerializer < ActiveModel::Serializer
    attributes :id, :products
  end
end
=======
  
  has_one :basket 

  class BasketSerializer < ActiveModel::Serializer
    attributes :id, :products 
  end
end
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
