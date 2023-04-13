class Animal < ApplicationRecord
  belongs_to :farmer
  has_many :orders

  validates :animal_type, presence: true
  validates :breed, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
