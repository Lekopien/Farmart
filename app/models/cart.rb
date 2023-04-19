class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  belongs_to :land
end
