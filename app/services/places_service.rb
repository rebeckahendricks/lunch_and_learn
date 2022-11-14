require 'faraday'
require 'json'

class PlacesService
  def self.get_places(lat, long)
    response = conn.get('/v2/places', { categories: 'tourism.sights', filter: "circle:#{long},#{lat},20000" })
    parse(response)
  end

  def self.conn
    Faraday.new('https://api.geoapify.com') do |faraday|
      faraday.params['apiKey'] = ENV['places_api_key']
    end
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
