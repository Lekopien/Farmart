class AnimalSerializer < ActiveModel::Serializer
    attributes :id, :breed, :age, :price, :in_stock,
  end