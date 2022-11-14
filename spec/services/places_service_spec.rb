require 'rails_helper'

RSpec.describe PlacesService do
  it 'returns a list of tourist sights from a given country', :vcr do
    lat, long = [46.0, 2.0]
    search = PlacesService.get_places(lat, long)

    expect(search).to be_a Hash
    expect(search[:features]).to be_an Array

    search[:features].each do |sight|
      expect(sight).to be_a Hash
      expect(sight).to have_key :properties
      expect(sight[:properties]).to have_key :name
      expect(sight[:properties]).to have_key :street
      expect(sight[:properties]).to have_key :postcode
      expect(sight[:properties]).to have_key :city
      expect(sight[:properties]).to have_key :place_id
      expect(sight[:properties][:name]).to be_a String
      expect(sight[:properties][:street]).to be_a String
      expect(sight[:properties][:postcode]).to be_a String
      expect(sight[:properties][:city]).to be_a String
      expect(sight[:properties][:place_id]).to be_a String
    end
  end
end
