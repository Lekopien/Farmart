class Order < ApplicationRecord
  belongs_to :user
  belongs_to :animal

  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :delivery_address, presence: true
end
