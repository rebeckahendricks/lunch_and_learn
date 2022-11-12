require 'rails_helper'

describe 'Learning Resources API' do
  describe 'Happy Path', :vcr do
    it 'sends a list of learning resources from a country given by a user' do
      get '/api/v1/learning_resources?country=italy'
      resources = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(resources[:data]).to be_a Hash

      resource = resources[:data]

      expect(resource).to have_key :id
      expect(resource[:id]).to eq('null')
      expect(resource).to have_key :type
      expect(resource[:type]).to eq('learning_resource')
      expect(resource).to have_key :attributes
      expect(resource[:attributes]).to be_a Hash

      expect(resource[:attributes]).to have_key :country
      expect(resource[:attributes][:country]).to eq('italy')
      expect(resource[:attributes]).to have_key :video
      expect(resource[:attributes][:video]).to be_a Hash
      expect(resource[:attributes][:video]).to have_key :title
      expect(resource[:attributes][:video][:title]).to be_a String
      expect(resource[:attributes][:video]).to have_key :youtube_video_id
      expect(resource[:attributes][:video][:youtube_video_id]).to be_a String
      expect(resource[:attributes]).to have_key :images
      expect(resource[:attributes][:images]).to be_an Array
      expect(resource[:attributes][:images].count).to be <= 10
      expect(resource[:attributes][:images][0]).to have_key :alt_tag
      expect(resource[:attributes][:images][0][:alt_tag]).to be_a String
      expect(resource[:attributes][:images][0]).to have_key :url
      expect(resource[:attributes][:images][0][:url]).to be_a String

      expect(resource[:attributes]).to_not have_key(:created_at)
      expect(resource[:attributes]).to_not have_key(:links)
      expect(resource[:attributes]).to_not have_key(:total)
    end
  end

  describe 'Sad Path', :vcr do
    it 'returns empty objects if no videos or images are found' do
      get '/api/v1/learning_resources?country=abcdefghijk'
      resources = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(resources[:data]).to be_a Hash

      resource = resources[:data]

      expect(resource).to have_key :id
      expect(resource[:id]).to eq('null')
      expect(resource).to have_key :type
      expect(resource[:type]).to eq('learning_resource')
      expect(resource).to have_key :attributes
      expect(resource[:attributes]).to be_a Hash

      expect(resource[:attributes]).to have_key :country
      expect(resource[:attributes][:country]).to eq('abcdefghijk')
      expect(resource[:attributes]).to have_key :video
      expect(resource[:attributes][:video]).to eq([])
      expect(resource[:attributes]).to have_key :images
      expect(resource[:attributes][:images]).to eq([])
    end
  end
end
