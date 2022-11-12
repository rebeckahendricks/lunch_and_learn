require 'rails_helper'

RSpec.describe Video do
  it 'exists' do
    video_data = {
      "kind": "youtube#searchResult",
      "etag": "fZrxYep3SpOL2SRZRaridMLJhZ8",
      "id": {
          "kind": "youtube#video",
          "videoId": "DD4wjwaFU-U"
      },
      "snippet": {
          "publishedAt": "2021-05-07T03:20:53Z",
          "channelId": "UCluQ5yInbeAkkeCndNnUhpw",
          "title": "A Super Quick History of Italy",
          "description": "Sources: \"A Brief History of Italy\" (2018) by Jeremy Black. Robinson Publishing, London. \"The Pursuit of Italy: A History of its ...",
          "thumbnails": {
              "default": {
                  "url": "https://i.ytimg.com/vi/DD4wjwaFU-U/default.jpg",
                  "width": 120,
                  "height": 90
              },
              "medium": {
                  "url": "https://i.ytimg.com/vi/DD4wjwaFU-U/mqdefault.jpg",
                  "width": 320,
                  "height": 180
              },
              "high": {
                  "url": "https://i.ytimg.com/vi/DD4wjwaFU-U/hqdefault.jpg",
                  "width": 480,
                  "height": 360
              }
          },
          "channelTitle": "Mr History",
          "liveBroadcastContent": "none",
          "publishTime": "2021-05-07T03:20:53Z"
      }
  }

    video = Video.new(video_data)

    expect(video).to be_a Video
    expect(video.title).to eq('A Super Quick History of Italy')
    expect(video.youtube_video_id).to eq('DD4wjwaFU-U')
  end
end
