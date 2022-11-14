class PlacesFacade
  def self.get_tourist_sights(lat, long)
    data = PlacesService.get_places(lat, long)
    places_data = data[:features]
    # binding.pry
    places_data&.map do |place|
      TouristSight.new(place[:properties])
    end
  end
end
