require 'rails_helper'

RSpec.describe LearningResource do
  it 'exists' do
    video = build(:video)
    images = build_list(:image, 10)

    learning_resource = LearningResource.new(video, images)

    expect(learning_resource).to be_a LearningResource
    expect(learning_resource.video).to eq(video)
    expect(learning_resource.images).to eq(images)
    expect(learning_resource.images.count).to eq(10)
  end
end
