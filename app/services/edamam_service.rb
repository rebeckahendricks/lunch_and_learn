require 'faraday'
require 'json'

class EdamamService
  def self.get_recipes(country)
    response = conn.get('/api/recipes/v2', { q: country })
    parse(response)
  end

  def self.conn
    Faraday.new('https://api.edamam.com') do |faraday|
      faraday.params['type'] = 'public'
      faraday.params['app_id'] = ENV['app_id']
      faraday.params['app_key'] = ENV['app_key']
    end
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
