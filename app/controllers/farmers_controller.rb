class FarmersController < ApplicationController
  def index
    render json: Farmer.all, each_serializer: FarmerSerializer
  end

  def show
    render json: Farmer.find_by(id: params[:id]), serializer: FarmerSerializer
  end

def create
  @farmer = Farmer.new(farmer_params)
  if @farmer.save
    render json: @farmer, status: :created
  else
    render json: @farmer.errors, status: :unprocessable_entity
  end
end

def update
  @farmer = Farmer.find(params[:id])
  if @farmer.update(farmer_params)
    render json: { message: "farmer successfully updated." }
  else
    render json: { error: "Failed to update farmer." }
  end
end



  private

  def farmer_params
    params.permit(:farmer_name, :farmer_location, :contact_info)
  end
end
