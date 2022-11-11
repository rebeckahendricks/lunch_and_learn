class Api::V1::RecipesController < ApplicationController
  def index
    country = params[:country]
    country ||= CountryFacade.random_country
    recipes = RecipeFacade.get_recipes(country)
    render json: RecipeSerializer.serialize(recipes, country)
  end
end
