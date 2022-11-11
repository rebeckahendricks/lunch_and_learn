class Api::V1::LearningResourcesController < ApplicationController
  def index
    country = params[:country] ||= CountryFacade.random_country
    learning_resources = LearningResourceFacade.get_resources(country)
    render json: LearningResourceSerializer.serialize(learning_resources, country)
  end
end
