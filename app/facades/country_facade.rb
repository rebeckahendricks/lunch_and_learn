class CountryFacade
  def self.random_country
    data = CountryService.get_countries
    country_names = data.map do |country|
      country[:name][:common]
    end
    country_names.sample
  end
end
