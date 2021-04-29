class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :unit_price, :weight, :description, :image, :category_id
end
