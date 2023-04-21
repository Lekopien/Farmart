class FarmersController < ApplicationController
    def index
        farmers = Farmer.all
        render json: farmers
      end
    
      def new
        farmer = Farmer.new
      end
    
      def show
        farmer = Farmer.find_by(id: params[:id])
        if farmer
          render json: farmer
        else
          render json: {error: "This user does not exist?"}, status: 404
        end
      end
    
      def create
        farmer = Farmer.find_or_create_by(farmer_params)
    
        if farmer
          render json: farmer
        else
          render json: {error: "Erorr creating farmer"}, status: 400
        end
      end
    
      private
      def farmer_params
        params.require(:farmer).permit(:id, :first_name, :last_name,  :phone, :email, :farm, :user_id)
      end
end
