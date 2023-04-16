class AnimalsController < ApplicationController
    before_action :set_animal, only: [:show, :edit, :update, :destroy]
  
    def index
      @animals = Animal.all
    end
  
    def show
    end
  
    def new
      @animal = Animal.new
    end
  
    def edit
    end
  
    def create
      @animal = Animal.new(animal_params)
  
      respond_to do |format|
        if @animal.save
          format.html { redirect_to @animal, notice: 'Animal was successfully created.' }
          format.json { render :show, status: :created, location: @animal }
        else
          format.html { render :new }
          format.json { render json: @animal.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @animal.update(animal_params)
          format.html { redirect_to @animal, notice: 'Animal was successfully updated.' }
          format.json { render :show, status: :ok, location: @animal }
        else
          format.html { render :edit }
          format.json { render json: @animal.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def destroy
      @animal.destroy
      respond_to do |format|
        format.html { redirect_to animals_url, notice: 'Animal was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      def set_animal
        @animal = Animal.find(params[:id])
      end
  
      def animal_params
        params.require(:animal).permit(:image, :animal_type, :breed, :age, :price, :in_stock, :farmer_id)
      end
  end
  