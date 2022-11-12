require 'faraday'
require 'json'

class YouTubeService
  def self.get_videos(country)
    response = conn.get('/youtube/v3/search', { q: country })
    parse(response)
  end

  def self.conn
    Faraday.new('https://www.googleapis.com') do |faraday|
      faraday.params['key'] = ENV['youtube_key']
      faraday.params['part'] = 'snippet'
      faraday.params['channelId'] = 'UCluQ5yInbeAkkeCndNnUhpw'
      faraday.params['order'] = 'relevance'
    end
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
