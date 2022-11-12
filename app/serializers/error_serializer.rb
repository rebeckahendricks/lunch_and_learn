class ErrorSerializer

  def self.invalid_email
    {
      "message": 'User could not be created',
      "error": 'Email already exists'
    }
  end

  def self.invalid_api_key
    {
      "message": 'Favorite could not be added',
      "error": 'API key is invalid'
    }
  end
end
