class FarmerSerializer < ActiveModel::Serializer
  attributes :id, :farm, :products

  has_many :products

  class ProductSerializer < ActiveModel::Serializer
    attributes :name, :price, :quantity, :url_img, :id
  end

end
