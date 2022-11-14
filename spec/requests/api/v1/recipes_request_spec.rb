require 'rails_helper'

RSpec.describe 'Recipes API' do
  describe 'Happy Path', :vcr do
    it 'sends a list of recipes from a country given by a user' do
      get '/api/v1/recipes?country=thailand'
      recipes = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(recipes[:data]).to be_an Array

      recipes[:data].each do |recipe|
        expect(recipe).to have_key(:id)
        expect(recipe[:id]).to eq('null')
        expect(recipe).to have_key(:type)
        expect(recipe[:type]).to eq('recipe')
        expect(recipe).to have_key(:attributes)
        expect(recipe[:attributes]).to be_a Hash
        expect(recipe[:attributes]).to have_key(:title)
        expect(recipe[:attributes][:title]).to be_a String
        expect(recipe[:attributes]).to have_key(:url)
        expect(recipe[:attributes][:url]).to be_a String
        expect(recipe[:attributes]).to have_key(:country)
        expect(recipe[:attributes][:country]).to be_a String
        expect(recipe[:attributes]).to have_key(:image)
        expect(recipe[:attributes][:image]).to be_a String

        expect(recipe[:attributes]).to_not have_key :from
        expect(recipe[:attributes]).to_not have_key :source
        expect(recipe[:attributes]).to_not have_key :yield
        expect(recipe[:attributes]).to_not have_key :healthLabels
      end
    end

    it 'sends a list of recipes from a random country if a user does not send in a country' do 
      allow(CountryFacade).to receive(:random_country).and_return('Italy')
      get '/api/v1/recipes'

      recipes = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(recipes[:data]).to be_an Array

      recipes[:data].each do |recipe|
        expect(recipe).to have_key(:id)
        expect(recipe[:id]).to eq('null')
        expect(recipe).to have_key(:type)
        expect(recipe[:type]).to eq('recipe')
        expect(recipe).to have_key(:attributes)
        expect(recipe[:attributes]).to be_a Hash
        expect(recipe[:attributes]).to have_key(:title)
        expect(recipe[:attributes][:title]).to be_a String
        expect(recipe[:attributes]).to have_key(:url)
        expect(recipe[:attributes][:url]).to be_a String
        expect(recipe[:attributes]).to have_key(:country)
        expect(recipe[:attributes][:country]).to be_a String
        expect(recipe[:attributes]).to have_key(:image)
        expect(recipe[:attributes][:image]).to be_a String

        expect(recipe[:attributes]).to_not have_key :from
        expect(recipe[:attributes]).to_not have_key :source
        expect(recipe[:attributes]).to_not have_key :yield
        expect(recipe[:attributes]).to_not have_key :healthLabels
      end
    end
  end

  describe 'Sad Path', :vcr do
    describe 'if a valid country parameter does not return any recipes' do
      it 'sends an empty array' do
        get '/api/v1/recipes?country=vatican city'
        recipes = JSON.parse(response.body, symbolize_names: true)

        expect(response).to be_successful
        expect(recipes[:data]).to be_an Array
        expect(recipes[:data]).to be_empty
      end
    end

    describe 'if a country parameter is an empty string' do
      it 'sends an empty array' do
        get '/api/v1/recipes?country='

        expect(response).to_not be_successful
        expect(response).to have_http_status(404)
      end
    end

    describe 'if a country parameter is not a valid country' do
      it 'returns a 404 status' do
        get '/api/v1/recipes?country=abcdefghij'

        expect(response).to_not be_successful
        expect(response).to have_http_status(404)
      end
    end
  end
end
