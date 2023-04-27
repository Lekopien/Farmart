class FarmerSerializer < ActiveModel::Serializer
  attributes :id, :farm, :products

  has_many :products

  class ProductSerializer < ActiveModel::Serializer
<<<<<<< HEAD
    attributes :name, :price, :quantity, :image, :id
  end

end
=======
    attributes :name, :price, :quantity, :url_img, :id
  end

end
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
