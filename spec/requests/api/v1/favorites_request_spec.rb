require 'rails_helper'
require 'securerandom'

RSpec.describe 'Favorites Request API' do
  describe 'Happy Path - Add Favorites' do
    before :each do
      @user = create(:user)
      @user.generate_api_key
      @recipe = build(:recipe)

      request_body = {
        api_key: @user.api_key,
        country: @recipe.country,
        recipe_link: @recipe.url,
        recipe_title: @recipe.title
      }

      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/favorites', headers: headers, params: JSON.generate(request_body)
    end

    it 'is a 201 response that sends a success message' do
      expect(response).to be_successful
      expect(response).to have_http_status(201)

      favorites_response = JSON.parse(response.body, symbolize_names: true)
      expected_favorites_response = {
        "success": 'Favorite added successfully'
      }
      expect(favorites_response).to eq(expected_favorites_response)
    end

    it 'creates a favorite resource for the user' do
      created_favorite = Favorite.last
      expect(created_favorite.country).to eq(@recipe.country)
      expect(created_favorite.recipe_link).to eq(@recipe.url)
      expect(created_favorite.recipe_title).to eq(@recipe.title)
      expect(created_favorite.user_id).to eq(@user.id)
    end
  end

  describe 'Sad Path - Add Favorites' do
    describe 'Invalid API key' do
      before :each do
        @user = create(:user)
        @user.generate_api_key
        @recipe = build(:recipe)
        @api_key_with_no_user = SecureRandom.urlsafe_base64(27)

        request_body = {
          api_key: @api_key_with_no_user,
          country: @recipe.country,
          recipe_link: @recipe.url,
          recipe_title: @recipe.title
        }

        headers = { 'CONTENT_TYPE' => 'application/json' }
        post '/api/v1/favorites', headers: headers, params: JSON.generate(request_body)
      end

      it 'is a 400 response that sends an error message' do
        expect(response).to_not be_successful
        expect(response).to have_http_status(400)

        favorites_response = JSON.parse(response.body, symbolize_names: true)
        expected_error_response = {
          "message": 'Favorite could not be added',
          "error": 'API key is invalid'
        }
        expect(favorites_response).to eq(expected_error_response)
      end

      it 'does not create a favorite resource for the user' do
        expect(Favorite.last).to be nil
      end
    end
  end

  describe 'Happy Path - Get favorites' do
    before :each do
      @user1 = create(:user)
      @user2 = create(:user)
      @user1.generate_api_key

      @favorite1 = create(:favorite, user_id: @user1.id)
      @favorite2 = create(:favorite, user_id: @user1.id)
      @favorite3 = create(:favorite, user_id: @user2.id)

      request_body = {
        api_key: @user1.api_key
      }

      get '/api/v1/favorites', params: JSON.generate(request_body)
    end

    it 'responds with the correct elements' do
      expect(response).to be_successful
      expect(response).to have_http_status(200)

      favorites_response = JSON.parse(response.body, symbolize_names: true)

      expect(favorites_response).to be_a Hash
      expect(favorites_response).to have_key :data
      expect(favorites_response[:data]).to be_an Array

      favorites_response[:data].each do |favorite|
        expect(favorite).to have_key :id
        expect(favorite[:id]).to be_a String
        expect(favorite).to have_key :type
        expect(favorite[:type]).to eq('favorite')
        expect(favorite).to have_key :attributes
        expect(favorite[:attributes]).to be_a Hash
        expect(favorite[:attributes]).to have_key :recipe_title
        expect(favorite[:attributes][:recipe_title]).to be_a String
        expect(favorite[:attributes]).to have_key :recipe_link
        expect(favorite[:attributes][:recipe_link]).to be_a String
        expect(favorite[:attributes]).to have_key :country
        expect(favorite[:attributes][:country]).to be_a String
        expect(favorite[:attributes]).to have_key :created_at
        expect(favorite[:attributes][:created_at]).to be_a String
      end
    end

    it 'returns only the requested users favorites' do
      favorites_response = JSON.parse(response.body, symbolize_names: true)
      user1_favorite1 = favorites_response[:data][0][:attributes]
      user1_favorite2 = favorites_response[:data][1][:attributes]

      expect(user1_favorite1[:recipe_title]).to eq(@favorite1.recipe_title)
      expect(user1_favorite2[:recipe_title]).to eq(@favorite2.recipe_title)
      expect(favorites_response[:data].count).to eq(2)
    end
  end

  describe 'Sad Path - GET favorites' do
    describe 'Invalid API key' do

    end

    describe 'User has no favorited recipes' do

    end
  end
end
