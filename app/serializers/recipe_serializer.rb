class RecipeSerializer
  def self.serialize(recipes)
    {
      "data": recipes.map do |recipe|
        {
          "id": 'null',
          "type": 'recipe',
          "attributes": {
            "title": recipe.title,
            "url": recipe.url,
            "country": recipe.country,
            "image": recipe.image
          }
        }
      end
    }
  end
end
