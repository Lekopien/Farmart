class LeasesController < ApplicationController
     before_action :authorize_user
     before_action :authorize_farmer
        def index
            render json: Lease.all
        end

        def show
            render json: Lease.find_by(id: params[:id])
        end

        def create
            @lease = Lease.new(lease_params)
            if @lease.save
                render json: @lease, status: :created
            else
                render json: @lease.errors, status: :unprocessable_entity
            end
        end

        def update
            @lease = Lease.find_by(id: params[:id])
            if @lease.update(lease_params)
                render json: { message: "lease details updated successfully" }
            else
                render json: @lease.errors, status: :unprocessable_entity
            end
        end

        def destroy
            @lease = Lease.find_by(id: params[:id])

            if @lease.destroy
                render json: { message: "record deleted successfully" }
            else
                render json: @lease.errors, status: :unprocessable_entity
            end
        end

        private

        def lease_params
            params.permit(:user_id, :land_id, :lease_status)
        end

end
