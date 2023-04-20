Rails.application.routes.draw do
  root 'home#index'
  resources :leases
  resources :orders
  resources :lands
  resources :animals
  resources :farmers, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :show, :create, :update]
# <<<<<<< HEAD
  resources :carts, only: [:index, :create, :update, :destroy] do
    collection do
      delete :clear_cart
    end
  end
  
  post "/farmers_login", to: "farmers#login"
  post "/users_login", to: "users#login"
  post "/logout", to: "sessions#logout"

<<<<<<< HEAD
  post "/farmers_login", to: "farmers#login"
  post "/users_login", to: "users#login"
  post "/logout", to: "sessions#logout"
  
=======
>>>>>>> 9cbf467c24f92f115f6ab6169305c09bfe788f30

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
