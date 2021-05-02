class OrderdetailSerializer
  include FastJsonapi::ObjectSerializer
  attributes :quantity, :order_id, :product_id
end
