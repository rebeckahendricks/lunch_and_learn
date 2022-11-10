require 'rails_helper'

RSpec.describe EdamamService do
  it 'returns recipe data from a specific country' do
    country = "thailand"
    search = EdamamService.get_recipes(country)

    expect(search).to be_a Hash
    expect(search[:hits]).to be_an Array

    search[:hits].each do |recipe|
      expect(recipe).to have_key :uri
      expect(recipe[:uri]).to be_a String
      expect(recipe).to have_key :label
      expect(recipe[:label]).to be_a String
      expect(recipe).to have_key :image
      expect(recipe[:image]).to be_a String
    end
  end
end
