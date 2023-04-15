class Farmer < ApplicationRecord
    has_many :animals
    has_many :lands
end
