require 'rails_helper'

RSpec.describe 'Tourist Sights API' do
  describe 'Happy Path - GET Tourist Sights', :vcr do
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
        expect(sight[:attributes]).to be_a Hash
        expect(sight[:attributes]).to have_key :name
        expect(sight[:attributes]).to have_key :address
        expect(sight[:attributes]).to have_key :place_id
        expect(sight[:attributes][:name]).to be_a String
        expect(sight[:attributes][:address]).to be_a String
        expect(sight[:attributes][:place_id]).to be_a String
      end
    end
  end

  describe 'Happy Path - GET Tourist Sights (optional country parameter)', :vcr do
    before :each do
      allow(CountryFacade).to receive(:random_country).and_return('Italy')
      get '/api/v1/tourist_sights'
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
        expect(sight[:attributes]).to be_a Hash
        expect(sight[:attributes]).to have_key :name
        expect(sight[:attributes]).to have_key :address
        expect(sight[:attributes]).to have_key :place_id
        expect(sight[:attributes][:name]).to be_a String
        expect(sight[:attributes][:address]).to be_a String
        expect(sight[:attributes][:place_id]).to be_a String
      end
    end
  end

  describe 'Sad Path - GET Tourist Sights (country name has spaces)' do
    before :each do
      country = 'New Zealand'
      get "/api/v1/tourist_sights/country=#{country}"
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
        expect(sight[:attributes]).to be_a Hash
        expect(sight[:attributes]).to have_key :name
        expect(sight[:attributes]).to have_key :address
        expect(sight[:attributes]).to have_key :place_id
        expect(sight[:attributes][:name]).to be_a String
        expect(sight[:attributes][:address]).to be_a String
        expect(sight[:attributes][:place_id]).to be_a String
      end
    end
  end
end
