class RecipesController < ApplicationController
    def index
        recipe = Recipe.all
        render json: {status: 'SUCCESS', message: 'Recipes Loaded', data: recipe},status: :ok
    end
    
end
