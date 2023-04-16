Rails.application.routes.draw do
  resources :animals, only: [:index, :show, :create, :update]
  resources :lands, only: [:index, :show, :create, :update]  resources :animals
  resources :leases
  resources :orders
  resources :users
  resources :farmers
end