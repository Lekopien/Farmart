class UsersController < ApplicationController
  # before_action :authorize_user
  # skip_before_action :authorize_user, only: [:login, :create]

    def index
        render json: User.all
    end

    def show
      render json: User.find_by(id: params[:id])
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
