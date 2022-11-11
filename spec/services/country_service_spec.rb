require 'rails_helper'

RSpec.describe CountryService do
  it 'returns a list of all countries' do
    search = CountryService.get_countries

    expect(search).to be_an Array

    search.each do |country|
      expect(country).to have_key :name
      expect(country[:name]).to be_a Hash
      expect(country[:name]).to have_key :common
      expect(country[:name][:common]).to be_a String
    end
  end
end
