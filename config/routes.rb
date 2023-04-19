Rails.application.routes.draw do
<<<<<<< HEAD
  root 'home#index'
=======
>>>>>>> 5c5ccb776610e5934588a3573c46fc2cfcf0edb7
  resources :leases
  resources :orders
  resources :lands
  resources :animals
  resources :farmers, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :show, :create, :update]
<<<<<<< HEAD
  resources :carts, only: [:index, :create, :update, :destroy] do
    collection do
      delete :clear_cart
    end
  end
  
  post "/farmers_login", to: "farmers#login"
  post "/users_login", to: "users#login"
  post "/logout", to: "sessions#logout"
=======
  post "/farmers_login", to: "farmers#login"
  post "/users_login", to: "users#login"
>>>>>>> 5c5ccb776610e5934588a3573c46fc2cfcf0edb7

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
