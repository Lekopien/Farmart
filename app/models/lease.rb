class Lease < ApplicationRecord
    belongs_to :land
    belongs_to :user

    # validates :user_id, :land_id, :lease_status, presence: true
    # validates :lease_status, inclusion: { in: [true, false] }
end
