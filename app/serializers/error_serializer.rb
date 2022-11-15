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
      "message": 'Resource could not be found',
      "error": 'Country is invalid'
    }
  end

  def self.favorite_not_found
    {
      "error": 'Favorite not found'
    }
  end

  def self.password_confirmation
    {
      "message": 'User could not be created',
      "error": 'Password and password confirmation must match'
    }
  end

  def self.invalid_login
    {
      "message": 'User could not be logged in',
      "error": 'Email and/or password are incorrect'
    }
  end
end
