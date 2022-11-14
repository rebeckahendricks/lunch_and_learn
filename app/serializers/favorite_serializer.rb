class FavoriteSerializer
  def self.successful_add
    {
      "success": 'Favorite added successfully'
    }
  end

  def self.successful_destroy
    {
      "success": 'Favorite deleted successfully'
    }
  end

  def self.get_favorites(favorites)
    {
      "data": favorites.map do |favorite|
        {
          "id": favorite.id.to_s,
          "type": "favorite",
          "attributes": {
            "recipe_title": favorite.recipe_title,
            "recipe_link": favorite.recipe_link,
            "country": favorite.country,
            "created_at": favorite.created_at
          }
        }
      end
    }
  end
end
