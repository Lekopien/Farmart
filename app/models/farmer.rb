class Farmer < ApplicationRecord
  belongs_to :user
  has_many :animals
  has_many :lands
end
