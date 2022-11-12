class LearningResource
  attr_reader :video, :images

  def initialize(video, images)
    @video = video
    @images = images
  end
end
