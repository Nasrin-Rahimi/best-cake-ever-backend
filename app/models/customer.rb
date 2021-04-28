class Customer < ApplicationRecord
    has_many :orders
    has_many :orderdetails, through: :orders
    has_secure_password

    validates :name, presence: true
    validates :name, uniqueness: true
end
