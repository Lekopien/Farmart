class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def show
      render json: User.find_by(id: params[:id])
    end

    def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          render json: { message: "user successfully updated." }
        else
          render json: { error: "Failed to update user." }
        end
      end

      private

      def user_params
        params.permit(:name, :email, :password, :address)
      end
end
