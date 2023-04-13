class LandsController < ApplicationController
    def index
        render json: Land.all
    end

    def show
        render json: Land.find(params[:id])
    end

    def create
        render json: Land.create(land_params)
    end

    def update
        render json: Land.update(params[:id], land_params)
    end

    def destroy
        render json: Land.destroy(params[:id])
    end

    private

    def land_params
        params.require(:land).permit(:name, :address, :farmer_id)
    end
end

