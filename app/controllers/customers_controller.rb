# frozen_string_literal: true

# The CustomerController class manages all the API routes related to customers
class CustomersController < ApplicationController
  def index
    customers = Customer.all
    render json: customers
  end

  def new
    Customer.new
  end

  def show
    customer = Customer.find_by(id: params[:id])
    if customer
      render json: customer
    else
      render json: { error: 'This user does not exist?' }, status: 404
    end
  end

  def create
    username = params[:username]
    customer = Customer.find_or_create_by(username)

    if customer
      render json: customer
    else
      render json: { error: 'Error creating farmer' }, status: 400
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:id, :first_name, :last_name, :user_id, :phone, :email, :adress)
  end
end
