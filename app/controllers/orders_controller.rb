class OrdersController < ApplicationController
    def index
        render json: Order.all
    end

    def show
        render json: Order.find(params[:id])
    end

    def create
        render json: Order.create(order_params)
    end

    def update
        render json: Order.update(params[:id], order_params)
    end

    def destroy
        render json: Order.destroy(params[:id])
    end

    private

    def order_params
        params.require(:order).permit(:user_id, :animal_id, :total_price, :order_status, :delivery_address)
    end
end

