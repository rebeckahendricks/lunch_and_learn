require 'rails_helper'

RSpec.describe EdamamService do
  it 'returns recipe data from a specific country' do
    country = "thailand"
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
end
