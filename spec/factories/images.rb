FactoryBot.define do
  factory :image do
    image_data = { alt_description: Faker::Lorem.paragraph(sentence_count: 2), urls: { raw: Faker::Internet.url } }
    initialize_with { new(image_data) }
  end
end
