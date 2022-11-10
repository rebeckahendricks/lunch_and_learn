class RecipeFacade
  def self.get_recipes(country)
    data = EdamamService.get_recipes(country)
    recipes = data[:hits]
    recipes.map do |recipe|
      Recipe.new(recipe)
    end
  end
end