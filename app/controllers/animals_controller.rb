class AnimalsController < ApplicationController
     before_action :authorize_farmer
    def index
        render json: Animal.all
    end

    def show
        render json: Animal.find_by(id: params[:id])
    end

    def create
        @animal = Animal.new(animal_params)
        if @animal.save
            render json: @animal, status: :created
        else
            render json: @animal.errors, status: :unprocessable_entity
        end
    end

    def update
        @animal = Animal.find_by(id: params[:id])
        if @animal.update(animal_params)
            render json: { message: "animal details updated successfully" }
        else
            render json: @animal.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @animal = Animal.find_by(id: params[:id])

        if @animal.destroy
            render json: { message: "record deleted successfully" }
        else
            render json: @animal.errors, status: :unprocessable_entity
        end
    end

    private

    def animal_params
        params.permit(:farmer_id, :animal_type, :breed, :age, :price, :in_stock, :image)
    end
end
