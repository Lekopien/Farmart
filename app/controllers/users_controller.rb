class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def create
        @user = user.new(user_params)

        if @user.save
          render json: @user, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.require(:user).permit(:user_name, :user_location, :contact_info)
      end
end
