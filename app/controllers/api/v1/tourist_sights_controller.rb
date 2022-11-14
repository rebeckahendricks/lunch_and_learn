class Api::V1::TouristSightsController < ApplicationController
  def index
    country = params[:country]
    lat, long = CountryFacade.capital_lat_long(country)
  end
end
