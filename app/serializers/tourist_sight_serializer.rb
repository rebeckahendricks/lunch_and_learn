class TouristSightSerializer
  def self.serialize(sights)
    {
      "data": sights.map do |sight|
        {
          "id": 'null',
          "type": 'tourist_sight',
          "attributes": {
            "name": sight.name,
            "address": sight.address,
            "place_id": sight.place_id
          }
        }
      end
    }
  end
end
