class CountryFacade
  def self.country_names
    data = CountryService.get_countries
    data.map do |country|
      country[:name][:common]
    end
  end

  def self.random_country
    country_names.sample
  end

  def self.valid_country?(country)
    country_names.include?(country.downcase.titleize)
  end
end
