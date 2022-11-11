class RecipeSerializer
  include JSONAPI::Serializer

  attributes :title, :url, :image

  def self.serialize(recipes, country)
    {
      "data": recipes.map do |recipe|
      {
        "id": "null",
        "type": "recipe",
        "attributes": {
          "title": recipe.title,
          "url": recipe.url,
          "country": country,
          "image": recipe.image
        }
      }
    end
    }
  end
end
