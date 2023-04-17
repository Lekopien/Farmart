class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :animal_id, :total_price, :order_status, :delivery_address

  belongs_to :user
  belongs_to :animal
end
