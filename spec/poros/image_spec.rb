require 'rails_helper'

RSpec.describe Image do
  it 'exists' do
    image_data = {
      "id": "rknrvCrfS1k",
      "created_at": "2018-01-20T21:28:57Z",
      "updated_at": "2022-11-11T09:03:01Z",
      "promoted_at": "2018-01-21T12:32:39Z",
      "width": 2675,
      "height": 4027,
      "color": "#c0d9f3",
      "blur_hash": "L,H2i[M_oge._4Rjofa}XnbcWAW=",
      "description": "The Cliffs of Cinque Terre",
      "alt_description": "Manarola, Italy",
      "urls": {
          "raw": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3",
          "full": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?crop=entropy&cs=tinysrgb&fm=jpg&ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3&q=80",
          "regular": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3&q=80&w=1080",
          "small": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3&q=80&w=400",
          "thumb": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3&q=80&w=200",
          "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1516483638261-f4dbaf036963"
      },
      "links": {
          "self": "https://api.unsplash.com/photos/rknrvCrfS1k",
          "html": "https://unsplash.com/photos/rknrvCrfS1k",
          "download": "https://unsplash.com/photos/rknrvCrfS1k/download?ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI",
          "download_location": "https://api.unsplash.com/photos/rknrvCrfS1k/download?ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI"
      },
      "likes": 3566,
      "liked_by_user": false,
      "current_user_collections": [],
      "sponsorship": "null",
      "topic_submissions": {
          "nature": {
              "status": "approved",
              "approved_on": "2020-04-06T14:20:18Z"
          },
          "wallpapers": {
              "status": "approved",
              "approved_on": "2021-06-17T15:52:37Z"
          }
      },
      "user": {
          "id": "NuPaOVVjvqA",
          "updated_at": "2022-10-26T01:25:32Z",
          "username": "jackward",
          "name": "Jack Ward",
          "first_name": "Jack",
          "last_name": "Ward",
          "twitter_username": "jwardu",
          "portfolio_url": "null",
          "bio": "Adventure/Landscape Photographer",
          "location": "Boston, Ma",
          "links": {
              "self": "https://api.unsplash.com/users/jackward",
              "html": "https://unsplash.com/es/@jackward",
              "photos": "https://api.unsplash.com/users/jackward/photos",
              "likes": "https://api.unsplash.com/users/jackward/likes",
              "portfolio": "https://api.unsplash.com/users/jackward/portfolio",
              "following": "https://api.unsplash.com/users/jackward/following",
              "followers": "https://api.unsplash.com/users/jackward/followers"
          },
          "profile_image": {
              "small": "https://images.unsplash.com/profile-1522420435626-e26c29024ea9?ixlib=rb-4.0.3&crop=faces&fit=crop&w=32&h=32",
              "medium": "https://images.unsplash.com/profile-1522420435626-e26c29024ea9?ixlib=rb-4.0.3&crop=faces&fit=crop&w=64&h=64",
              "large": "https://images.unsplash.com/profile-1522420435626-e26c29024ea9?ixlib=rb-4.0.3&crop=faces&fit=crop&w=128&h=128"
          },
          "instagram_username": "jwardu",
          "total_collections": 0,
          "total_likes": 853,
          "total_photos": 217,
          "accepted_tos": true,
          "for_hire": true,
          "social": {
              "instagram_username": "jwardu",
              "portfolio_url": "null",
              "twitter_username": "jwardu",
              "paypal_email": "null"
          }
      },
      "tags": [
          {
              "type": "landing_page",
              "title": "italy",
              "source": {
                  "ancestry": {
                      "type": {
                          "slug": "images",
                          "pretty_slug": "Images"
                      },
                      "category": {
                          "slug": "travel",
                          "pretty_slug": "Travel"
                      },
                      "subcategory": {
                          "slug": "italy",
                          "pretty_slug": "Italy"
                      }
                  },
                  "title": "Italy pictures & images",
                  "subtitle": "Download free italy images",
                  "description": "Choose from a curated selection of Italy photos. Always free on Unsplash.",
                  "meta_title": "Beautiful Italy Pictures | Download Free Images on Unsplash",
                  "meta_description": "Choose from hundreds of free Italy pictures. Download HD Italy photos for free on Unsplash.",
                  "cover_photo": {
                      "id": "rknrvCrfS1k",
                      "created_at": "2018-01-20T21:28:57Z",
                      "updated_at": "2022-10-17T10:37:38Z",
                      "promoted_at": "2018-01-21T12:32:39Z",
                      "width": 2675,
                      "height": 4027,
                      "color": "#c0d9f3",
                      "blur_hash": "L,H2i[M_oge._4Rjofa}XnbcWAW=",
                      "description": "The Cliffs of Cinque Terre",
                      "alt_description": "Manarola, Italy",
                      "urls": {
                          "raw": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixlib=rb-1.2.1",
                          "full": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixlib=rb-1.2.1&q=80&cs=tinysrgb&fm=jpg&crop=entropy",
                          "regular": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixlib=rb-1.2.1&w=1080&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb",
                          "small": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixlib=rb-1.2.1&w=400&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb",
                          "thumb": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixlib=rb-1.2.1&w=200&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb",
                          "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1516483638261-f4dbaf036963"
                      },
                      "links": {
                          "self": "https://api.unsplash.com/photos/rknrvCrfS1k",
                          "html": "https://unsplash.com/photos/rknrvCrfS1k",
                          "download": "https://unsplash.com/photos/rknrvCrfS1k/download",
                          "download_location": "https://api.unsplash.com/photos/rknrvCrfS1k/download"
                      },
                      "likes": 3520,
                      "liked_by_user": false,
                      "current_user_collections": [],
                      "sponsorship": "null",
                      "topic_submissions": {
                          "wallpapers": {
                              "status": "approved",
                              "approved_on": "2021-06-17T15:52:37Z"
                          },
                          "travel": {
                              "status": "approved",
                              "approved_on": "2020-04-06T14:20:18Z"
                          }
                      },
                      "premium": false,
                      "user": {
                          "id": "NuPaOVVjvqA",
                          "updated_at": "2022-10-15T18:38:33Z",
                          "username": "jackward",
                          "name": "Jack Ward",
                          "first_name": "Jack",
                          "last_name": "Ward",
                          "twitter_username": "jwardu",
                          "portfolio_url": "null",
                          "bio": "Adventure/Landscape Photographer",
                          "location": "Boston, Ma",
                          "links": {
                              "self": "https://api.unsplash.com/users/jackward",
                              "html": "https://unsplash.com/@jackward",
                              "photos": "https://api.unsplash.com/users/jackward/photos",
                              "likes": "https://api.unsplash.com/users/jackward/likes",
                              "portfolio": "https://api.unsplash.com/users/jackward/portfolio",
                              "following": "https://api.unsplash.com/users/jackward/following",
                              "followers": "https://api.unsplash.com/users/jackward/followers"
                          },
                          "profile_image": {
                              "small": "https://images.unsplash.com/profile-1522420435626-e26c29024ea9?ixlib=rb-1.2.1&crop=faces&fit=crop&w=32&h=32",
                              "medium": "https://images.unsplash.com/profile-1522420435626-e26c29024ea9?ixlib=rb-1.2.1&crop=faces&fit=crop&w=64&h=64",
                              "large": "https://images.unsplash.com/profile-1522420435626-e26c29024ea9?ixlib=rb-1.2.1&crop=faces&fit=crop&w=128&h=128"
                          },
                          "instagram_username": "jwardu",
                          "total_collections": 0,
                          "total_likes": 853,
                          "total_photos": 217,
                          "accepted_tos": true,
                          "for_hire": true,
                          "social": {
                              "instagram_username": "jwardu",
                              "portfolio_url": "null",
                              "twitter_username": "jwardu",
                              "paypal_email": "null"
                          }
                      }
                  }
              }
          }
      ]
  }

    image = Image.new(image_data)

    expect(image).to be_an Image
    expect(image.alt_tag).to eq('Manarola, Italy')
    expect(image.url).to eq('https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3')
  end
end
