Rails.application.routes.draw do
  resources :orderdetails
  resources :orders
  resources :products
  resources :categories
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
