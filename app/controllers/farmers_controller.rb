class FarmersController < ApplicationController
    def index
        render json: Farmer.all
    end

    def show
        render json: Farmer.find(params[:id])
    end

    def create
        render json: Farmer.create(farmer_params)
    end

    def update
        render json: Farmer.update(params[:id], farmer_params)
    end

    def destroy
        render json: Farmer.destroy(params[:id])
    end

    private

    def farmer_params
        params.require(:farmer).permit(:name, :email, :password, :address)
    end
end

