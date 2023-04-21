class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :basket
  
  has_one :basket 

  class BasketSerializer < ActiveModel::Serializer
    attributes :id, :products 
  end
end
