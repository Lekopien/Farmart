class Order < ApplicationRecord
    belongs_to :user
    belongs_to :animal

    validates :user_id, :animal_id, :total_price, :order_status, :delivery_address, presence: true
    validates :order_status, inclusion: { in: [true, false] }
    validates :total_price, numericality: { greater_than_or_equal_to: 0 }
end
