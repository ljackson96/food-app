class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        json_response(@recipes)
    end

    def create
        @recipe = Recipe.create!(recipe_params)
        json_response(@recipe, :created)
    end

    def show
        json_response(@recipe)
    end
    
end
