class LearningResourceFacade
  def self.get_resources(country)
    video_data = YouTubeService.get_videos(country)
    video = video_data[:items].first
    images = UnsplashService.get_images(country)
    LearningResource.new(video, images)
  end
end
