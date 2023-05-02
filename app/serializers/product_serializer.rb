class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :farmer_id, :category, :product_img, :get_image_url
end
