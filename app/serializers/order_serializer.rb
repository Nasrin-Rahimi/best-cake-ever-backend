class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :total_price, :order_Date
  has_many :orderdetails 
end
