class Land < ApplicationRecord
  belongs_to :farmer
  has_many :leases

  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :location, presence: true
end
