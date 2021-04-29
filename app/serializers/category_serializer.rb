class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :desc, :image
  has_many :products 
end
