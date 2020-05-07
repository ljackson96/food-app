class RecipesController < ApplicationController
    before_action :set_recipe

    def index
        @recipes = Recipe.all
        json_response(@recipes)
    end

    def show
        json_response(@recipe)
    end

    def create
        @recipe = Recipe.create!(recipe_params)
        json_response(@recipe, :created)
    end

    private

    def recipe_params
        params.permit(:recipe)
    end

    def set_recipe
        @recipe = Recipe.find(params[:recipe_id])
    end
    
end
