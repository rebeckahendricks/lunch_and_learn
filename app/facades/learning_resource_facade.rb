class LearningResourceFacade
  def self.get_resources(country)
    video = self.video(country)
    images = self.images(country)
    LearningResource.new(video, images)
  end

  def self.video(country)
    video_data = YouTubeService.get_videos(country)
    video = video_data[:items].first
    if video_matches_country?(video, country)
      Video.new(video)
    else
      []
    end
  end

  def self.images(country)
    images_data = UnsplashService.get_images(country)
    images_data[:results].first(10).map { |image_data| Image.new(image_data) }
  end

  def self.video_matches_country?(video, country)
    video[:snippet][:title].include?(country.downcase.titleize)
  end
end
