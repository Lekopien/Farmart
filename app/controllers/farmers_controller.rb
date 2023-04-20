class FarmersController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
   before_action :authorize_farmer
   skip_before_action :authorize_farmer, only: [:login, :create]
=======
  # before_action :authorize_farmer
  # skip_before_action :authorize_farmer, only: [:login, :create]
>>>>>>> 5c5ccb776610e5934588a3573c46fc2cfcf0edb7
=======
   before_action :authorize_farmer
   skip_before_action :authorize_farmer, only: [:login, :create]
>>>>>>> 9cbf467c24f92f115f6ab6169305c09bfe788f30

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
end
