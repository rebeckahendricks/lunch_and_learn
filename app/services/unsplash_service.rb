require 'faraday'
require 'json'

class UnsplashService
  def self.get_images(country)
    response = conn.get('/search/photos', { query: country })
    parse(response)
  end

  def self.conn
    Faraday.new('https://api.unsplash.com') do |faraday|
      faraday.params['client_id'] = ENV['unsplash_key']
    end
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end