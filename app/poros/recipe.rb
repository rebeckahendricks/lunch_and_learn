class Recipe
  attr_reader :title, :url, :image, :country

  def initialize(data, country)
    @title = data[:recipe][:label]
    @url = data[:recipe][:uri]
    @image = data[:recipe][:image]
    @country = country
  end
end
