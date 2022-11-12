class LearningResourceSerializer
  def self.serialize(learning_resources, country)
    {
      "data": {
        "id": "null",
        "type": "learning_resource",
        "attributes": {
          "country": country,
          "video": {
            "title": learning_resources.video.title,
            "youtube_video_id": learning_resources.video.youtube_video_id
          },
          "images": learning_resources.images.map do |image|
                  {
                    "alt_tag": image.alt_tag,
                    "url": image.url
                  }
                    end
        }
      }
    }
  end
end
