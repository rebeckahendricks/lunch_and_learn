class Api::V1::RecipesController < ApplicationController
  def index
    if params[:country]
      country = params[:country]
    else
      country = CountryFacade.random_country
    end
    recipes = RecipeFacade.get_recipes(country)
    render json: RecipeSerializer.serialize(recipes, country)
  end
end
