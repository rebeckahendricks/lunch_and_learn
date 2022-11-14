require 'rails_helper'

RSpec.describe 'Tourist Sights API' do
  describe 'Happy Path - GET Tourist Sights within 20000m of the capital city of a given country' do
    before :each do
      country = 'France'
      get "/api/v1/tourist_sights?country=#{country}"
      @sights = JSON.parse(response.body, symbolize_names: true)
    end

    it 'has a sucessful response' do
      expect(response).to be_successful
      expect(@sights).to be_a Hash
    end

    it 'each sight includes name, formatted address, and place_id' do
      tourist_sights = @sights[:data]

      tourist_sights.each do |sight|
        expect(sight).to have_key :id
        expect(sight).to have_key :type
        expect(sight).to have_key :attributes
        expect(sight[:id]).to eq('null')
        expect(sight[:type]).to eq('tourist_sight')
        expect(sight[:attributes])
      end
    end
  end
end 