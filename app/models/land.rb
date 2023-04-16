class Land < ApplicationRecord
    belongs_to :farmer
    has_many :leases
  end