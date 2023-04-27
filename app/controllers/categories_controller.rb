class CategoriesController < ApplicationController
    def index
        categories = Category.all
<<<<<<< HEAD

        render json: categories.map(&:name).uniq

    end

      def new
        category = Category.new
      end

=======
        
        render json: categories.map(&:name).uniq
      
    end
    
      def new
        category = Category.new
      end
    
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
      def show
        category = Category.find_by(id: params[:id])
        if category
          render json: category
        else
          render json: {error: "This category does not exist?"}, status: 404
        end
      end
<<<<<<< HEAD

      def create
        name = params[:name]

        category = Category.find_by(name)

=======
    
      def create
        name = params[:name]
    
        category = Category.find_by(name)
    
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
        if category
          render json: category
        else
          render json: {error: "Erorr creating category"}, status: 400
        end
      end
<<<<<<< HEAD

=======
    
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
      private
      def category_params
        params.require(:category).permit(:id, :name)
      end
<<<<<<< HEAD
end
=======
end
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
