class ErrorSerializer

  def self.invalid_email
    {
      "message": 'User could not be created',
      "error": 'Email already exists'
    }
  end

  def self.invalid_api_key_create
    {
      "message": 'Favorite could not be added',
      "error": 'API key is invalid'
    }
  end

  def self.invalid_api_key_index
    {
      "message": 'Favorites could not be found',
      "error": 'API key is invalid'
    }
  end

  def self.invalid_country
    {
      "message": 'Could not find tourist sights',
      "error": 'Country input is not a valid country'
    }
  end
end
