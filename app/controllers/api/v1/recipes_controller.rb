class Api::V1::RecipesController < ApplicationController
  def index
    country = params[:country] ||= CountryFacade.random_country
    if country.valid_country?
      recipes = RecipeFacade.get_recipes(country)
      render json: RecipeSerializer.serialize(recipes)
    else
      render status: 404
    end
  end
end
