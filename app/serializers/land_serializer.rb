class LandSerializer < ActiveModel::Serializer
  attributes :id, :farmer_id, :price, :location, :availability

  belongs_to :farmer
end
