class LeaseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :land_id, :lease_status

  belongs_to :user
  belongs_to :land
end
