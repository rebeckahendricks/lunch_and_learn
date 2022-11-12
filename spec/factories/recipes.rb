FactoryBot.define do
  factory :recipe do
    country { Faker::Address.country }
    recipe_data = { recipe: { label: Faker::Food.dish, uri: Faker::Internet.url, image: Faker::Internet.url }}
    initialize_with { new(recipe_data, country) }
  end
end
