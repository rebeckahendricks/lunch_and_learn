class Api::V1::TouristSightsController < ApplicationController
  def index
    lat, long = CountryFacade.capital_lat_long(params[:country])
    sights = PlacesFacade.get_tourist_sights(lat, long)
    if sights
      render json: TouristSightSerializer.serialize(sights)
    else
      render json: ErrorSerializer.invalid_country, status: 404
    end
  end
end
