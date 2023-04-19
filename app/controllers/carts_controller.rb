class CartsController < ApplicationController
    before_action :authenticate_user!
  
    # def index
    #   @items = current_user.cart_items
    #   render json: @items, each_serializer: CartSerializer
    # end
  
    # def create
    #   if cart_params[:animal_id].present?
    #     @item = Animal.find(cart_params[:animal_id])
    #   elsif cart_params[:land_id].present?
    #     @item = Land.find(cart_params[:land_id])
    #   end
  
    #   if @item
    #     current_user.add_to_cart(@item, cart_params[:quantity])
    #     redirect_to carts_path, notice: "#{item.name} was added to your cart"
    #   else
    #     redirect_to root_path, alert: "Invalid item"
    #   end
    # end
  
    # def update
    #   @item = current_user.cart_items.find(params[:id])
    #   current_user.update_item_quantity(@item, params[:quantity].to_i)
    #   redirect_to carts_path
    # end
  
    # def destroy
    #   @item = current_user.cart_items.find(params[:id])
    #   current_user.remove_from_cart(@item)
    #   redirect_to carts_path
    # end
  
    # def clear_cart
    #   current_user.clear_cart
    #   redirect_to carts_path
    # end
  
    # private
  
    # def cart_params
    #   params.permit(:animal_id, :land_id, :quantity)
    # end
end
  