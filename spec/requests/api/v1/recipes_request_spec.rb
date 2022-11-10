require 'rails_helper'

describe 'Recipes API' do
  describe 'Happy Path' do
    it 'sends a list of recipes from a country given by a user' do
      # attributes_for_list(:recipe, 3, country: 'thailand')

      get '/api/v1/recipes?country=thailand'
      recipes = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(recipes[:data]).to be_an Array

      # expect(recipes[:data].count).to eq(3)

      recipes[:data].each do |recipe|
        expect(recipe).to have_key(:id)
        expect(recipe[:id].null?).to eq(true)
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
        expect(recipe[:attributes]).to_not have_key() #Check recipe API call and see which attributes are not needed
      end
    end

    it 'sends a list of recipes from a random country if a user does not send in a country' do
      allow(CountryFacade).to receive(:random_country).and_return('Thailand')

      get '/api/v1/recipes'

      recipes = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(recipes[:data]).to be_an Array

      recipes[:data].each do |recipe|
        expect(recipe).to have_key(:id)
        expect(recipe[:id].null?).to eq(true)
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
        expect(recipe[:attributes]).to_not have_key() #Check recipe API call and see which attributes are not needed
      end
    end
  end

  describe 'Sad Path' do
    describe 'If a country parameter is an empty string' do
      it 'sends an empty array' do
        get '/api/v1/recipes?country='
        recipes = JSON.parse(response.body, symbolize_names: true)

        expect(response).to be_successful
        expect(recipes[:data]).to be_an Array
        expect(recipes[:data]).to be_empty
      end
    end

    describe 'If a value does not return any recipes' do
      it 'sends an empty array' do
        get '/api/v1/recipes?country=abcdefghijklmnop'
        recipes = JSON.parse(response.body, symbolize_names: true)

        expect(response).to be_successful
        expect(recipes[:data]).to be_an Array
        expect(recipes[:data]).to be_empty
      end
    end
  end
end