class CartSerializer < ActiveModel::Serializer
    attributes :id, :name, :price, :quantity, :total_price, :item_type

end
#   def id
#     object.item.id
#   end

#   def name
#     object.item.name
#   end

#   def price
#     object.item.price
#   end

#   def quantity
#     object.quantity
#   end

#   def total_price
#     object.total_price
#   end

#   def item_type
#     object.item_type
#   end



