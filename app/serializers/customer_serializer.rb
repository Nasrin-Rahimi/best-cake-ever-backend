class CustomerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :orders
  has_many :orderdetails, through: :orders
end
