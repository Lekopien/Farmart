class Lease < ApplicationRecord
  belongs_to :user
  belongs_to :land

  validates :lease_status, inclusion: { in: [true, false] }
  # validation to the Lease model to ensure lease_status attribute is either true or false.
end
