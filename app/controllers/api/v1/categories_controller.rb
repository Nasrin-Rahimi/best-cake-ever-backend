class Api::V1::CategoriesController < ApplicationController

    def index
        categories = Category.all
        options = {
                include: [:products]
            }
        categories_json = CategorySerializer.new(categories, options)
        render json: categories_json
    end

    def show
        category = Category.find(params[:id])
        render json: category
    end

end
