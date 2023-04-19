Rails.application.routes.draw do
  resources :leases
  resources :orders
  resources :lands
  resources :animals
  resources :farmers, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :show, :create, :update]
  resources :carts, only: [:create, :destroy]

  post "/farmers_login", to: "farmers#login"
  post "/users_login", to: "users#login"

  post '/add_to_cart/:animal_id/:land_id/:quantity', to: 'carts#create', as: 'add_to_cart'
  delete '/remove_from_cart/:animal_id/:land_id', to: 'carts#destroy', as: 'remove_from_cart'
end