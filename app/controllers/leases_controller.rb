class LeasesController < ApplicationController
    def index
        render json: Lease.all
    end

    def show
        render json: Lease.find(params[:id])
    end

    def create
        render json: Lease.create(lease_params)
    end

    def update
        render json: Lease.update(params[:id], lease_params)
    end

    def destroy
        render json: Lease.destroy(params[:id])
    end

    private

    def lease_params
        params.require(:lease).permit(:user_id, :land_id, :lease_status)
    end
end

