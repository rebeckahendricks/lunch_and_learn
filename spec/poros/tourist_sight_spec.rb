require 'rails_helper'

RSpec.describe TouristSight do
  it 'exists' do
    tourist_sight_data = {
      "name": "Tour de l'horloge",
      "street": "Allée de l'Horloge",
      "suburb": "Les Granges",
      "city": "Aubusson",
      "municipality": "Aubusson",
      "county": "Creuse",
      "state": "New Aquitaine",
      "region": "Metropolitan France",
      "postcode": "23200",
      "country": "France",
      "country_code": "fr",
      "lon": 2.1686008833333332,
      "lat": 45.957359,
      "formatted": "Tour de l'horloge, Allée de l'Horloge, 23200 Aubusson, France",
      "address_line1": "Tour de l'horloge",
      "address_line2": "Allée de l'Horloge, 23200 Aubusson, France",
      "categories": [
          "building",
          "building.historic",
          "heritage",
          "tourism",
          "tourism.sights",
          "tourism.sights.castle"
      ],
      "details": [
          "details",
          "details.heritage",
          "details.wiki_and_media"
      ],
      "datasource": {
          "sourcename": "openstreetmap",
          "attribution": "© OpenStreetMap contributors",
          "license": "Open Database Licence",
          "url": "https://www.openstreetmap.org/copyright",
          "raw": {
              "url": "http://en.wikipedia.org/wiki/File:Aubusson_tour_de_l_horloge.JPG",
              "name": "Tour de l'horloge",
              "osm_id": 225390299,
              "ref:mhs": "PA00099998",
              "building": "yes",
              "heritage": 3,
              "historic": "castle",
              "osm_type": "w",
              "wikidata": "Q22951256",
              "wikipedia": "fr:Tour de l'Horloge",
              "heritage:operator": "mhs",
              "mhs:inscription_date": "1926-06-15"
          }
      },
      "place_id": "51d28de2694b5901405998a9a0ad8afa4640f00102f901db2e6f0d00000000920311546f7572206465206c27686f726c6f6765"
  }

    tourist_sight = TouristSight.new(tourist_sight_data)

    expect(tourist_sight).to be_a TouristSight
    expect(tourist_sight.name).to eq("Tour de l'horloge")
    expect(tourist_sight.address).to eq("Tour de l'horloge, Allée de l'Horloge, 23200 Aubusson, France")
    expect(tourist_sight.place_id).to eq('51d28de2694b5901405998a9a0ad8afa4640f00102f901db2e6f0d00000000920311546f7572206465206c27686f726c6f6765')
  end
end
