Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Define routes for the farmers resource
  resources :farmers

  # Define nested routes for the animals resource under farmers
  resources :farmers do
    resources :animals
  end

  # Define nested routes for the lands resource under farmers
  resources :farmers do
    resources :lands
  end

  # Define routes for the orders resource
  resources :orders

  # Define nested routes for the orders resource under users
  resources :users do
    resources :orders
  end

  # Define routes for the leases resource
  resources :leases

  # Define nested routes for the leases resource under users
  resources :users do
    resources :leases
  end
end


# With these routes, the following URLs should be available in my application:

# /farmers: shows a list of all farmers
# /farmers/:id: shows details for a specific farmer
# /farmers/:farmer_id/animals: shows a list of animals for a specific farmer
# /farmers/:farmer_id/lands: shows a list of lands for a specific farmer
# /orders: shows a list of all orders
# /orders/:id: shows details for a specific order
# /users/:user_id/orders: shows a list of orders for a specific user
# /leases: shows a list of all leases
# /leases/:id: shows details for a specific lease
# /users/:user_id/leases: shows a list of leases for a specific user
