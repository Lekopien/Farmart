class FarmersController < ApplicationController
    def index
        farmers = Farmer.all
        render json: farmers
      end
<<<<<<< HEAD

      def new
        farmer = Farmer.new
      end

=======
    
      def new
        farmer = Farmer.new
      end
    
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
      def show
        farmer = Farmer.find_by(id: params[:id])
        if farmer
          render json: farmer
        else
          render json: {error: "This user does not exist?"}, status: 404
        end
      end
<<<<<<< HEAD

      def create
        farmer = Farmer.find_or_create_by(farmer_params)

=======
    
      def create
        farmer = Farmer.find_or_create_by(farmer_params)
    
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
        if farmer
          render json: farmer
        else
          render json: {error: "Erorr creating farmer"}, status: 400
        end
      end
<<<<<<< HEAD

=======
    
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
      private
      def farmer_params
        params.require(:farmer).permit(:id, :first_name, :last_name,  :phone, :email, :farm, :user_id)
      end
<<<<<<< HEAD
end
=======
end
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
