class Api::V1::LearningResourcesController < ApplicationController
  def index
    country = params[:country] ||= CountryFacade.random_country
    if CountryFacade.valid_country?(country)
      learning_resources = LearningResourceFacade.get_resources(country)
      render json: LearningResourceSerializer.serialize(learning_resources, country)
    else
      render json: ErrorSerializer.invalid_country, status: 404
    end
  end
end
