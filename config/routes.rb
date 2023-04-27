Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :new]
  resources :customers, only: [:index, :show, :create, :new]
  resources :farmers, only: [:index, :new, :create, :show]
  resources :categories, only: [:index, :new, :create, :show]
  resources :products, only: [:index, :new, :create, :show, :destroy]
  resources :baskets, only: [:index, :new, :create, :show, :destroy]
  resources :basket_products, only: [:index, :new, :create, :show, :destroy]
  resources :category_products, only: [:index, :new, :create, :show, :destroy]



  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'
  post '/remove', to: 'basket_products#remove'
  get '/profile', to: 'users#profile'


end
