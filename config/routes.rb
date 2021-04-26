Rails.application.routes.draw do
  post "api/v1/login", to: "api/v1/sessions#create"
  delete "api/v1/logout", to: "api/v1/sessions#destroy"
  get "api/v1/get_current_customer", to: "api/v1/sessions#get_current_customer"

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
