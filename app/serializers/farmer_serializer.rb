class FarmerSerializer < ActiveModel::Serializer
  attributes :id, :farmer_name, :farmer_location, :contact_info

  has_many :animals
end
