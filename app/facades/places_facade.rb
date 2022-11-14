class PlacesFacade
  def self.get_tourist_sights(lat, long)
    data = PlacesService.get_places(lat, long)
    places_data = data[:features]
    places_data.map do |place|
      TouristSight.new(place[:properties])
    end
  end
end
