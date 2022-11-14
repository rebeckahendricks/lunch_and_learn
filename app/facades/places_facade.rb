class PlacesFacade
  def self.get_tourist_sights(lat, long)
    data = PlacesService.get_places(lat, long)
    binding.pry
  end
end
