class LandsController < ApplicationController
    # before_action :authorize_farmer
        def index
            render json: Land.all
        end

        def show
            render json: Land.find_by(id: params[:id])
        end

        def create
            @land = Land.new(land_params)
            if @land.save
                render json: @land, status: :created
            else
                render json: @land.errors, status: :unprocessable_entity
            end
        end

        def update
            @land = Land.find_by(id: params[:id])
            if @land.update(land_params)
                render json: { message: "land details updated successfully" }
            else
                render json: @land.errors, status: :unprocessable_entity
            end
        end

        def destroy
            @land = Land.find_by(id: params[:id])

            if @land.destroy
                render json: { message: "record deleted successfully" }
            else
                render json: @land.errors, status: :unprocessable_entity
            end
        end

        private

        def land_params
            params.permit(:farmer_id, :price, :location, :availability, :image)
        end

end
