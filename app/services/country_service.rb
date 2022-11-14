require 'faraday'
require 'json'

class CountryService
  def self.get_countries
    response = conn.get('/v3.1/all')
    parse(response)
  end

  def self.get_country_info(country)
    response = conn.get("/v3.1/name/#{country}")
    parse(response)
  end

  def self.conn
    Faraday.new('https://restcountries.com')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
