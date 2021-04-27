class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :total_price, :order_Date
end
