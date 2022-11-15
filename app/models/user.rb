require 'securerandom'

class User < ApplicationRecord
  has_many :favorites

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :api_key, allow_nil: true, uniqueness: true
  validates_presence_of :password

  has_secure_password

  def generate_api_key
    update(api_key: SecureRandom.urlsafe_base64(27))
  end
end
