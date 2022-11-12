FactoryBot.define do
  factory :video do
    video_data = { snippet: { title: Faker::Movie.title }, id: { videoId: Faker::Alphanumeric.alphanumeric(number: 10) } }
    initialize_with { new(video_data) }
  end
end
