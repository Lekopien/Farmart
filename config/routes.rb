Rails.application.routes.draw do
  resources :leases
  resources :orders
  resources :lands
  resources :animals
  resources :farmers, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :show, :create, :update]
  post "/farmers_login", to: "farmers#login"
  post "/users_login", to: "users#login"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
