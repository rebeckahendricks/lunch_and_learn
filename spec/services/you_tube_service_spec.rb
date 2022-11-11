require 'rails_helper'

RSpec.describe YouTubeService do
  it 'returns videos about a specific country', :vcr do
    country = 'italy'
    search = YouTubeService.get_videos(country)

    expect(search).to be_a Hash
    expect(search[:items]).to be_an Array

    expect(search[:items][0]).to have_key :snippet
    expect(search[:items][0][:snippet]).to be_a Hash
    expect(search[:items][0][:snippet]).to have_key :title
    expect(search[:items][0][:snippet][:title]).to be_a String

    expect(search[:items][0]).to have_key :id
    expect(search[:items][0][:id]).to be_a Hash
    expect(search[:items][0][:id]).to have_key :videoId
    expect(search[:items][0][:id][:videoId]).to be_a String
  end

  it 'returns an empty array if no videos are found', :vcr do
    country = 'abcdefghi'
    search = YouTubeService.get_videos(country)

    expect(search).to be_a Hash
    expect(search[:items]).to be_an Array
    expect(search[:items]).to eq([])
  end
end
