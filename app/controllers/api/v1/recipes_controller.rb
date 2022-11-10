class Api::V1::RecipesController < ApplicationController
  def index
    if params[:country]
      country = params[:country]
    else
      country = CountryFacade.random_country
    end
    render json: RecipeSerializer.new(RecipeFacade.get_recipes(country))
  end
end
