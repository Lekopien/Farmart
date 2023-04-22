# frozen_string_literal: true

# The UsersController class manages all the API routes related to users
class UsersController < ApplicationController
  def signin
    # find user then authenticate
    user = User.find_by(email: params[:email])
    # puts user
    if user && user.authenticate(params[:password])
      render json: { token: issue_token(id: user.id), user: user }
    else
      render json: { error: 'user/password combo not found' }, status: 400
    end
  end

  def signup
    # find user then authenticate
    user = User.create(email: params[:email], password: params[:password], first_name: params[:first_name], 
    last_name: params[:last_name], address: params[:address], phone: params[:phone])

    user.define_user_type(params[:user_type], user.id)

    user.save

    if user
      render json: user
    else
      render json: { error: 'User/password combo not found' }, status: 400
    end
  end

  def validate
    user = get_current_user
    if user
      render json: { email: user.email, user: user }
    else
      render json: { error: 'invalid user' }, status: 404
    end
  end

  def profile
    user = User.find_by(id: params[:id])
    if user
      render json: user
    else
      render json: { error: 'This user does not exist?'}, status: 404
    end
  end

  def index
    users = User.all
    render json: users
  end

  def new
    User.new
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user
    else
      render json: { error: 'This user does not exist?' }, status: 404
    end
  end

  def create
    email = params[:email]
    user = User.find_or_create_by(email)

    if user
      render json: user
    else
      render json: { error: 'Erorr creating farmer' }, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :phone, :email, :isAdmin, :customer_id, :farmer_id, :password)
  end
end
