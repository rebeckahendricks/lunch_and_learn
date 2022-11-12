require 'rails_helper'

RSpec.describe 'Favorites Request API' do
  describe 'Happy Path' do
    it 'adds recipes to a favorited list for a user' do
      user = create(:user)
      user.generate_api_key
      recipe = build(:recipe)

      request_body = {
        api_key: user.api_key,
        country: recipe.country,
        recipe_link: recipe.url,
        recipe_title: recipe.title
      }

      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/favorites', headers: headers, params: JSON.generate(request_body)

      expect(response).to be_successful
      expect(response).to have_http_status(201)

      favorites_response = JSON.parse(response.body, symbolize_names: true)
      expected_favorites_response = {
        "success": 'Favorite added successfully'
      }

      expect(favorites_response).to eq(expected_favorites_response)
    end
  end
end
