class CategoriesController < ApplicationController
    def index
        categories = Category.all
        
        render json: categories.map(&:name).uniq
      
    end
    
      def new
        category = Category.new
      end
    
      def show
        category = Category.find_by(id: params[:id])
        if category
          render json: category
        else
          render json: {error: "This category does not exist?"}, status: 404
        end
      end
    
      def create
        name = params[:name]
    
        category = Category.find_by(name)
    
        if category
          render json: category
        else
          render json: {error: "Erorr creating category"}, status: 400
        end
      end
    
      private
      def category_params
        params.require(:category).permit(:id, :name)
      end
end
