class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :farmer_id, :url_img, :category
end
