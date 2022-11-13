class Api::V1::FavoritesController < ApplicationController
  def create
    user = User.find_by(api_key: params[:api_key])
    if user
      user.favorites.create(favorite_params)
      render json: FavoriteSerializer.successful_add, status: 201
    else
      render json: ErrorSerializer.invalid_api_key_create, status: 400
    end
  end

  def index
    user = User.find_by(api_key: params[:favorite][:api_key])
    if user
      favorites = user.favorites
      render json: FavoriteSerializer.get_favorites(favorites)
    else
      render json: ErrorSerializer.invalid_api_key_index, status: 400
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:id, :api_key, :country, :recipe_link, :recipe_title)
  end
end
