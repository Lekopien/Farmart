class Land < ApplicationRecord
    belongs_to :farmer

    # validates :farmer_id, :price, :location, :availability, :image, presence: true
    # validates :availability, inclusion: { in: [true, false] }
    # validates :price, numericality: { greater_than_or_equal_to: 0 }
end
