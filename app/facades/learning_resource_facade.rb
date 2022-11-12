class LearningResourceFacade
  def self.get_resources(country)
    video_data = YouTubeService.get_videos(country)
    video = Video.new(video_data[:items].first)
    images_data = UnsplashService.get_images(country)
    images = images_data[:results].first(10).map { |image_data| Image.new(image_data) }
    LearningResource.new(video, images)
  end
end
