class FarmerSerializer < ActiveModel::Serializer
  attributes :id, :farm, :products

  has_many :products

  class ProductSerializer < ActiveModel::Serializer
    attributes :name, :price, :quantity, :image, :id
  end

end