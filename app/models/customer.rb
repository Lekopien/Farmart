# frozen_string_literal: true

# The Customer Model manages the relationiships with other models 
class Customer < ApplicationRecord
  belongs_to :user
  has_one :basket
  has_many :products, through: :basket
  has_many :farmer_customers
  has_many :farmers, through: :farmer_customers
end
