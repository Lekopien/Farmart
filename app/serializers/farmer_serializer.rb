class FarmerSerializer < ActiveModel::Serializer
  attributes :id, :farmer_name, :farmer_location, :contact_info, :email

  has_many :animals
  has_many :lands
end
