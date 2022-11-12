require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_uniqueness_of(:api_key) }
  end

  describe '#instance_methods' do
    it 'can generate an API key for a newly created user' do
      user = create(:user)
      expect(user.api_key).to be_nil
      user.generate_api_key
      expect(user.api_key).to be_a String
    end
  end
end
