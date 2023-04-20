class UsersController < ApplicationController
<<<<<<< HEAD
   before_action :authorize_user
   skip_before_action :authorize_user, only: [:login, :create]
=======
  before_action :authorize_user
  skip_before_action :authorize_user, only: [:login, :create]
>>>>>>> 62fae196ece2c8b51771c5e1390b25a446a00431

    def index
        render json: User.all
    end

    def show
      @user = User.find_by(id: params[:id])

      if @user
        render json: @user, status: :ok
      else
        render json: { error: "User not found" }, status: :not_found
      end
    end

    def create
      @user = User.new(user_params)
      if @user.save
        token = encode_token({user_id: @user.id})
        render json: { user: @user, token: token }, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

    def update
      @user = User.find_by(id: params[:id])
      if @user.update(user_params)
        render json: { message: "User successfully updated." }, status: :ok
      else
        render json: @user.errors.full_messages, status: :unprocessable_entity
      end
    end

      def login
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(user_params[:password])
          token = encode_token({user_id: @user.id})
          render json: {user: @user, token: token }, status: :ok
        else
          render json: { error: "invalid email or password"}, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.permit(:name, :email, :password, :address)
      end
end
