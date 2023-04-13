class User < ApplicationRecord
    has_many :farmers
    has_many :orders
    has_many :leases

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
end
