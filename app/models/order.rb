class Order < ApplicationRecord
  belongs_to :customer
  has_many :orderdetails
end
