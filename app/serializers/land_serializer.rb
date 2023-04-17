class LandSerializer < ActiveModel::Serializer
  attributes :id, :farmer_id, :price, :location, :availability, :image

  belongs_to :farmer
end
