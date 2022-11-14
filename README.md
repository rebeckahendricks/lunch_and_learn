# Lunch and Learn API

This API provides users the ability to search for cuisines by country, and provides them with an opportunity to learn more about that country's culture.  It allows users to search for recipes by country, favorite recipes, and learn more about a particular country.

## Learning Goals for the Project:
    - Expose an API that aggregates data from multiple external APIs
    - Expose an API that requires an authentication token
    - Expose an API for CRUD functionality
    - Determine completion criteria based on the needs of other developers
    - Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc).

* Ruby version: 2.7.4

* Configuration<br>
`bundle install`<br>
`bundle exec figaro install`

* Database creation<br>
`rails db:create`

* Database initialization<br>
`rails db:migrate`

* How to run the test suite<br>
`bundle exec rspec`

* You will need to obtain API keys from the following sources:
    - <a href="https://developer.edamam.com/edamam-recipe-api">Edamam Recipe Search API</a> 
    - <a href="https://developers.google.com/youtube/v3/getting-started">YouTube API</a>
    - <a href="https://unsplash.com/documentation">Unsplash API</a>


Once you obtain your API kesy, your `application.yml` file should look like this:
```
app_id: <Edamam Application ID>
app_key: <Edamam Application Key>
youtube_key: <YouTube API key>
unsplash_key: <Unsplash API key>
```
## Endpoints

### Get Recipes for A Particular Country

#### Request
```
GET /api/v1/recipes?country=thailand
Content-Type: application/json
Accept: application/json
```

#### Response
```
{
    "data": [
        {
            "id": null,
            "type": "recipe",
            "attributes": {
                "title": "Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)",
                "url": "https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com..."
            }
        },
        {
            "id": null,
            "type": "recipe",
            "attributes": {
                "title": "Sriracha",
                "url": "http://www.jamieoliver.com/recipes/vegetables-recipes/sriracha/",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/."
            }
        },
        {...},
        {...},
        {...},
        {etc},
    ]
}
```
Notes: 
- If a country is not sent in by a user, the country will be randomly chosen for them.
### Get Learning Resources for a Particular Country

#### Request 
```
GET /api/v1/learning_resources?country=laos
Content-Type: application/json
Accept: application/json
```

#### Response
```
{
    "data": {
        "id": null,
        "type": "learning_resource",
        "attributes": {
            "country": "laos",
            "video": {
                "title": "A Super Quick History of Laos",
                "youtube_video_id": "uw8hjVqxMXw"
            },
            "images": [
                {
                    "alt_tag": "standing statue and temples landmark during daytime",
                    "url": "https://images.unsplash.com/photo-1528181304800-259b08848526?ixid=MnwzNzg2NzV8MHwxfHNlYXJjaHwxfHx0aGFpbGFuZHxlbnwwfHx8fDE2Njc4Njk1NTA&ixlib=rb-4.0.3"
                },
                {
                    "alt_tag": "five brown wooden boats",
                    "url": "https://images.unsplash.com/photo-1552465011-b4e21bf6e79a?ixid=MnwzNzg2NzV8MHwxfHNlYXJjaHwyfHx0aGFpbGFuZHxlbnwwfHx8fDE2Njc4Njk1NTA&ixlib=rb-4.0.3"
                },
                {
                    "alt_tag": "orange temples during daytime",
                    "url": "https://images.unsplash.com/photo-1563492065599-3520f775eeed?ixid=MnwzNzg2NzV8MHwxfHNlYXJjaHwzfHx0aGFpbGFuZHxlbnwwfHx8fDE2Njc4Njk1NTA&ixlib=rb-4.0.3"
                },
                {...},
                {...},
                {...},
                {etc},
              ]
        }
    }
}
```
Notes: Each learning resource returns 1 video (if available) and up to 10 images.

### User Registration

#### Request
```
POST /api/v1/users
Content-Type: application/json
Accept: application/json

{
  "name": "Athena Dao",
  "email": "athenadao@bestgirlever.com"
}
```

#### Response
```
{
  "data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "Athena Dao",
      "email": "athenadao@bestgirlever.com",
      "api_key": "jgn983hy48thw9begh98h4539h4"
    }
  }
}
```
Notes: 
- The request is sent in the body.
- Email addresses must be unique.

### Add Favorites

#### Request
```
POST /api/v1/favorites
Content-Type: application/json
Accept: application/json

{
    "api_key": "jgn983hy48thw9begh98h4539h4",
    "country": "thailand",
    "recipe_link": "https://www.tastingtable.com/.....",
    "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
}
```

#### Response
```
{
    "success": "Favorite added successfully"
}
```
Notes: 
- Request is sent in the body.
- `api_key` for a user must be valid.

### Get a User's Favorites

#### Request
```
GET /api/v1/favorites
Content-Type: application/json
Accept: application/json

{
    "api_key": "jgn983hy48thw9begh98h4539h4"
}
```

#### Response
```
{
    "data": [
        {
            "id": "1",
            "type": "favorite",
            "attributes": {
                "recipe_title": "Recipe: Egyptian Tomato Soup",
                "recipe_link": "http://www.thekitchn.com/recipe-egyptian-tomato-soup-weeknight....",
                "country": "egypt",
                "created_at": "2022-11-02T02:17:54.111Z"
            }
        },
        {
            "id": "2",
            "type": "favorite",
            "attributes": {
                "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)",
                "recipe_link": "https://www.tastingtable.com/.....",
                "country": "thailand",
                "created_at": "2022-11-07T03:44:08.917Z"
            }
        }
    ]
 } 
```
Notes:
- `api_key` can be sent as a query parameter
- `api_key` must be valid

## Project Extensions Completed
1) For the recipes and learning resources endpoints, there is functionality to check if a country is valid.
2) Additional endpoint: Delete a Favorite 
#### Request
```
DELETE /api/v1/favorites/{favorite_id}
Content-Type: application/json
Accept: application/json
```
#### Response
```
 {
      "success": 'Favorite deleted successfully'
    }
```

