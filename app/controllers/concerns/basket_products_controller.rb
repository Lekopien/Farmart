# frozen_string_literal: true

# The BasketProductsController class manages all the API routes related to basket_products
class BasketProductsController < ApplicationController
  def remove
    basket_product = BasketProduct.find_by(product_id: params[:product_id], basket_id: params[:basket_id])
    if basket_product
      basket_product.destroy
      render json: {message: 'Relationship destroyed'}
    else
      render json: {error: 'Could not destroy'}, status: 404
    end
  end

  def index
    render json: BasketProduct.all
  end

  def new
    BasketProduct.new
  end

  def show
    basket_product = BasketProduct.find_by(id: params[:id])
    if basket_product
      render json: basket_product
    else
      render json: {error: 'This basketProduct does not exist?'}, status: 404
    end
  end

  def create    
    basket_product = BasketProduct.create(product_id: params[:product_id], basket_id: params[:basket_id])

    if basket_product
      render json: basket_product
    else
      render json: {error: 'Erorr creating product'}, status: 400
    end
  end

  def destroy
    basket_product = BasketProduct.find_by(basket_product_params)
    if basket_product
      basket_product.destroy
      render json: {message: "Relationship destroyed"}
    else
      render json: {error: "Could not destroy"}, status: 404
    end
  end

  private
  def basket_product_params
    params.require(:basketProduct).permit(:product_id, :basket_id)
  end
end
