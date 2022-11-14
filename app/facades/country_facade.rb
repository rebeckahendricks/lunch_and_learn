class CountryFacade
  def self.random_country
    data = CountryService.get_countries
    country_names = data.map do |country|
      country[:name][:common]
    end
    country_names.sample
  end

  def self.capital_lat_long(country)
    data = CountryService.get_country_info(country)
    data[0][:latlng]
  end
end
