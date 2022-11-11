require 'rails_helper'

RSpec.describe EdamamService do
  it 'returns recipe data from a specific country', :vcr do
    country = 'thailand'
    search = EdamamService.get_recipes(country)

    expect(search).to be_a Hash
    expect(search[:hits]).to be_an Array

    search[:hits].each do |recipe|
      expect(recipe[:recipe]).to have_key :uri
      expect(recipe[:recipe][:uri]).to be_a String
      expect(recipe[:recipe]).to have_key :label
      expect(recipe[:recipe][:label]).to be_a String
      expect(recipe[:recipe]).to have_key :image
      expect(recipe[:recipe][:image]).to be_a String
    end
  end

  it 'returns an empty array if no recipes are found', :vcr do
    country = 'abcdefghi'
    search = EdamamService.get_recipes(country)

    expect(search).to be_a Hash
    expect(search[:hits]).to be_an Array
    expect(search[:hits]).to eq([])
  end
end
