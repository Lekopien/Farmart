class OrdersController < ApplicationController
  before_action :authorize_user
  before_action :authorize_farmer
        def index
            render json: Order.all
        end

        def show
          render json: Order.find_by(id: params[:id])
        end

        def create
            @order = Order.new(order_params)

            if @order.save
              render json: @order, status: :created
            else
              render json: @order.errors, status: :unprocessable_entity
            end
          end

          def update
            @order = Order.find(params[:id])
            if @order.update(order_params)
              render json: { message: "order successfully updated." }
            else
              render json: { error: "Failed to update order." }
            end
          end

          private

          def order_params
            params.permit(:user_id, :animal_id, :total_price, :order_status, :delivery_address)
          end

end
