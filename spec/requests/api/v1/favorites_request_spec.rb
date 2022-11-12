require 'rails_helper'

RSpec.describe 'Favorites Request API' do
  describe 'Happy Path' do
    it 'adds recipes to a favorited list for a user' do
      user = create(:user)
      country = "italy"
      user.generate_api_key
      recipe = build(:recipe)

      request_body = {
        "api_key": user.api_key,
        "country": country
      }
    end
  end
end