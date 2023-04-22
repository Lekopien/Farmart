class FarmersController < ApplicationController
<<<<<<< HEAD
  # before_action :authorize_farmer
  # skip_before_action :authorize_farmer, only: [:login, :create]

  def index
    render json: Farmer.all, each_serializer: FarmerSerializer
  end

  def show
    render json: Farmer.find_by(id: params[:id]), serializer: FarmerSerializer
  end

def create
  @farmer = Farmer.new(farmer_params)
  if @farmer.save
    token = encode_token({farmer_id: @farmer.id})
    render json: {farmer: @farmer, token: token }, status: :created
  else
    render json: @farmer.errors, status: :unprocessable_entity
  end
end

def update
  @farmer = Farmer.find(params[:id])
  if @farmer.update(farmer_params)
    render json: { message: "farmer successfully updated." }
  else
    render json: { error: "Failed to update farmer." }, status: :unprocessable_entity
  end
end

def login
  @farmer = Farmer.find_by(email: params[:email])

  if @farmer && @farmer.authenticate(farmer_params[:password])
    token = encode_token({farmer_id: @farmer.id})
    render json: {farmer: @farmer, token: token }, status: :ok
  else
    render json: { error: "invalid email or password"}, status: :unprocessable_entity
  end
end

  private

  def farmer_params
    params.permit(:farmer_name, :farmer_location, :contact_info, :email, :password)
  end
=======
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
>>>>>>> 8b29682a4c72af4ef6ffbcdd43865dca3584621a
end
