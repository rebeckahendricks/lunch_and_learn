require 'rails_helper'

RSpec.describe CountryService do
  it 'returns a list of all countries', :vcr do
    search = CountryService.get_countries

    expect(search).to be_an Array

    search.each do |country|
      expect(country).to have_key :name
      expect(country[:name]).to be_a Hash
      expect(country[:name]).to have_key :common
      expect(country[:name][:common]).to be_a String
    end
  end

  it 'returns information about a specific country' do
    country = 'France'
    search = CountryService.get_country_info(country)

    expect(search).to be_an Array
    expect(search[0]).to be_a Hash
    expect(search[0]).to have_key :latlng
    ex
  end
end
