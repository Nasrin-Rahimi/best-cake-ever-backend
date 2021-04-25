Rails.application.routes.draw do
  post "api/v1/login", to: "api/v1/sessions#create"

  namespace :api do
    namespace :v1 do
      
      resources :customers

      resources :orders do
        resources :orderdetails
      end
     
      resources :categories do
        resources :products
      end
      
    end
  end
end
