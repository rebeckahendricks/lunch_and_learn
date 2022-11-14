class CountryFacade
  def self.random_country
    data = CountryService.get_countries
    country_names = data.map do |country|
      country[:name][:common]
    end
    country_names.sample
  end

  def self.capital_lat_long(country = nil)
    country ||= random_country
    data = CountryService.get_country_info(country)
    if data[0]
      data[0][:latlng]
    else
    end
  end
end
