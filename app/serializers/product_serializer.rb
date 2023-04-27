class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :farmer_id, :image, :category
end