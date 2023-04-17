class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :animal_type, :breed, :age, :price, :in_stock, :image
  has_one :farmer
  belongs_to :farmer
end
