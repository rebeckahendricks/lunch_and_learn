require 'securerandom'

class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :api_key, uniqueness: true

  def generate_api_key
    update(api_key: SecureRandom.urlsafe_base64(27))
  end
end
