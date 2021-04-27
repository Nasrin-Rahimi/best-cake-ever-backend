class OrderdetailSerializer
  include FastJsonapi::ObjectSerializer
  attributes :quantity, :order_id
end
