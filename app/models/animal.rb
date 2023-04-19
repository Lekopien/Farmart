class Animal < ApplicationRecord
  belongs_to :farmer
  has_many :orders

  validates :farmer_id, :animal_type, :breed, :age, :price, :in_stock, :image, presence: true
  validates :in_stock, inclusion: { in: [true, false] }
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
