require 'rails_helper'

RSpec.describe 'Favorites Request API' do
  describe 'Happy Path - adds recipes to a favorited list for a user' do
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
end
