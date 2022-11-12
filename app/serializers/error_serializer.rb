class ErrorSerializer

  def self.invalid_email
    {
      "message": 'User could not be created',
      "error": 'Email already exists'
    }
  end
end
