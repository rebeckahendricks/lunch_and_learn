require 'rails_helper'

RSpec.describe UnsplashService do
  it 'returns photos related to a specific country', :vcr do
    country = 'italy'
    search = UnsplashService.get_images(country)

    expect(search).to be_a Hash
    expect(search[:results]).to be_an Array

    search[:results].each do |image|
      expect(image).to have_key :alt_description
      expect(image[:alt_description]).to be_a String
      expect(image).to have_key :urls
      expect(image[:urls]).to be_a Hash
      expect(image[:urls]).to have_key :raw
      expect(image[:urls][:raw]).to be_a String
    end
  end

  it 'returns an empty array if no images are found', :vcr do
    country = 'abcdefghi'
    search = UnsplashService.get_images(country)

    expect(search).to be_a Hash
    expect(search[:results]).to be_an Array
    expect(search[:results]).to eq([])
  end
end