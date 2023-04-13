class FarmersController < ApplicationController
    def index
      render json: Farmer.all, each_serializer: FarmerSerializer
    end

    def create
      @farmer = Farmer.new(farmer_params)

      if @farmer.save
        render json: @farmer, status: :created
      else
        render json: @farmer.errors, status: :unprocessable_entity
      end
    end

    private

    def farmer_params
      params.require(:farmer).permit(:farmer_name, :farmer_location, :contact_info)
    end
  end
