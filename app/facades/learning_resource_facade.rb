class LearningResourceFacade
  def self.get_resources(country)
    video = self.video(country)
    images = self.images(country)
    LearningResource.new(video, images)
  end

  def self.video(country)
    video_data = YouTubeService.get_videos(country)
    if video_data[:items].first.nil?
      []
    else
      Video.new(video_data[:items].first)
    end
  end

  def self.images(country)
    images_data = UnsplashService.get_images(country)
    images_data[:results].first(10).map { |image_data| Image.new(image_data) }
  end
end
