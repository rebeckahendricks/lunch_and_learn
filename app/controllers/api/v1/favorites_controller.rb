class Api::V1::FavoritesController < ApplicationController
  def create
    user = User.find_by(api_key: params[:api_key])
    if user
      user.favorites.create(favorite_params)
      render json: FavoriteSerializer.success, status: 201
    else
      render status: 400
    end
  end

  def favorite_params
    params.require(:favorite).permit(:id, :api_key, :country, :recipe_link, :recipe_title)
  end
end
