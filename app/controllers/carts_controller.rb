class CartsController < ApplicationController
    before_action :authenticate_user!
    
    def create
      animal = Animal.find(params[:animal_id])
      land = Land.find(params[:land_id])
      current_user.add_to_cart(animal, land, params[:quantity].to_i)
      redirect_to animals_path, notice: "Item added to cart"
    end
    
    def destroy
      animal = Animal.find(params[:animal_id])
      land = Land.find(params[:land_id])
      current_user.remove_from_cart(animal, land)
      redirect_to animals_path, notice: "Item removed from cart"
    end
  end
  