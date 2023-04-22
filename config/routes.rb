Rails.application.routes.draw do
<<<<<<< HEAD
  resources :leases
  resources :orders
  resources :lands
  resources :animals
  resources :farmers, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :show, :create, :update]
  resources :carts, only: [:create, :destroy]

  post "/farmers_login", to: "farmers#login"
  post "/users_login", to: "users#login"
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :new]
  resources :customers, only: [:index, :show, :create, :new]
  resources :farmers, only: [:index, :new, :create, :show]
  resources :categories, only: [:index, :new, :create, :show]
  resources :products, only: [:index, :new, :create, :show, :destroy]
  resources :baskets, only: [:index, :new, :create, :show, :destroy]
  resources :basket_products, only: [:index, :new, :create, :show, :destroy]
  resources :category_products, only: [:index, :new, :create, :show, :destroy]
>>>>>>> 8b29682a4c72af4ef6ffbcdd43865dca3584621a



  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'
  post '/remove', to: 'basket_products#remove'
  get '/profile', to: 'users#profile'


end
