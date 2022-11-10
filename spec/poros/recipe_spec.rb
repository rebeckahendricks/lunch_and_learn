require 'rails_helper'

RSpec.describe Recipe do
  it 'exists' do
    recipe_data = {
      "recipe": {
          "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_3a551652abf5a1cef1421660d1b657d9",
          "label": "Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)",
          "image": "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIb%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDAgsw8%2Fyf4K%2FgcFk8uqCGzkIyfxmJrsbI7CXBUzvj9gAIhAM5OwVliME65m13kdcYFPTxHACWobapY5HR5%2BDXnv7LfKswECH8QABoMMTg3MDE3MTUwOTg2IgyGh0%2BDZpcPWyTlfp8qqQRJ4yzWIuM5hsONbgmI5x572OZW1QdelchHY4nOl1xSaZVXpBKcmUsKgyq4yNeYwO39kTnnQe4%2FcceNQlwThDD72X3ZwqmbMfOyjXP6ieq1PKIXj9tyCCd6D8r9On0gdkt7Y0F30NlZYeT1Jnc5SnSeO78syfVLN4ggtALUa35gbGBvuSwEBuq9S92R6bjNNCJFNM3C0TOb8r8QOOMczr6WVM8ZLKbEp9Yja388CxPokQwXAHPo%2FwxFlcbY97uestQlMmXlz0i0U1vTJYaHJKzXTfZZ6nndMEL1M%2BU6Ahbu6zVqawP6s1dfRorRRXSBEnXhkOfuXCpHzVvOJlVY7Y3az3%2BrcaPYW6LNEvAcw0a8bbvuxVQ8e%2FLN1cZr3FrHKaxRc49W5QoHA1FkIuLFXWcOQNgkUZx%2FZTQbELBK7ej6LFgSsDIaGv4a0EsBhTwKVOtzXDNYl2CCoZsjYaOHbXLP8OfLbUR0H1IO0JUAwVyN7tGJMsmfsGhj9xpDCaZ6BFL7uqo90JqoL2oQFyRAp5aj3V6u20a0jHtwBlXBXfYlG%2Ffetf1syV%2BVEZctJR1nCXnV%2BUy7z5N8qLMx%2ByRZcX4gs%2F28TrY%2F6UvKpVrVqpgtqn9W0%2F4%2F1sahYLiH8fOuclcy3IUNFzyLeGZjAjiHiFthHpxCaP%2FuNh3NSZXRBVYjgiPfXMac%2BYOr7RhzVslkZSAK4I76vFp4AuVK5ovIH7Gs13B5IcZmmuIKMI%2FntZsGOqgBuc3V2D%2BawabAqeo2kpHN51inxPD%2BCn7ecOJGAQxYz7re6vvOxrYO1gHwwwEOsKNOWqzsVTE%2F1Ss26p6Dl6E8d4FpO9tO%2Bav3fMIZ4C%2BUIySVrhWN6LLHEr%2BLr23Ugra%2B5fM6yzncG121HWb9qfQYcIvj7zUjjIKcxS%2FytPEOI0UFDPRbg9txmdpq%2FZIr1XsdUJeL2H%2BjqXMas6f8H%2FJCciVAS21epKGR&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221110T221800Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFJN7IHGPB%2F20221110%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=cdc9fd7bc254485a9994a420ae2b64eff5cba87a72f94e31361de5b6142cd6ad",
          "images": {
              "THUMBNAIL": {
                  "url": "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0-s.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIb%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDAgsw8%2Fyf4K%2FgcFk8uqCGzkIyfxmJrsbI7CXBUzvj9gAIhAM5OwVliME65m13kdcYFPTxHACWobapY5HR5%2BDXnv7LfKswECH8QABoMMTg3MDE3MTUwOTg2IgyGh0%2BDZpcPWyTlfp8qqQRJ4yzWIuM5hsONbgmI5x572OZW1QdelchHY4nOl1xSaZVXpBKcmUsKgyq4yNeYwO39kTnnQe4%2FcceNQlwThDD72X3ZwqmbMfOyjXP6ieq1PKIXj9tyCCd6D8r9On0gdkt7Y0F30NlZYeT1Jnc5SnSeO78syfVLN4ggtALUa35gbGBvuSwEBuq9S92R6bjNNCJFNM3C0TOb8r8QOOMczr6WVM8ZLKbEp9Yja388CxPokQwXAHPo%2FwxFlcbY97uestQlMmXlz0i0U1vTJYaHJKzXTfZZ6nndMEL1M%2BU6Ahbu6zVqawP6s1dfRorRRXSBEnXhkOfuXCpHzVvOJlVY7Y3az3%2BrcaPYW6LNEvAcw0a8bbvuxVQ8e%2FLN1cZr3FrHKaxRc49W5QoHA1FkIuLFXWcOQNgkUZx%2FZTQbELBK7ej6LFgSsDIaGv4a0EsBhTwKVOtzXDNYl2CCoZsjYaOHbXLP8OfLbUR0H1IO0JUAwVyN7tGJMsmfsGhj9xpDCaZ6BFL7uqo90JqoL2oQFyRAp5aj3V6u20a0jHtwBlXBXfYlG%2Ffetf1syV%2BVEZctJR1nCXnV%2BUy7z5N8qLMx%2ByRZcX4gs%2F28TrY%2F6UvKpVrVqpgtqn9W0%2F4%2F1sahYLiH8fOuclcy3IUNFzyLeGZjAjiHiFthHpxCaP%2FuNh3NSZXRBVYjgiPfXMac%2BYOr7RhzVslkZSAK4I76vFp4AuVK5ovIH7Gs13B5IcZmmuIKMI%2FntZsGOqgBuc3V2D%2BawabAqeo2kpHN51inxPD%2BCn7ecOJGAQxYz7re6vvOxrYO1gHwwwEOsKNOWqzsVTE%2F1Ss26p6Dl6E8d4FpO9tO%2Bav3fMIZ4C%2BUIySVrhWN6LLHEr%2BLr23Ugra%2B5fM6yzncG121HWb9qfQYcIvj7zUjjIKcxS%2FytPEOI0UFDPRbg9txmdpq%2FZIr1XsdUJeL2H%2BjqXMas6f8H%2FJCciVAS21epKGR&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221110T221800Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFJN7IHGPB%2F20221110%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=0f2693e62b396da577147d0b4211219508514013e21fa1d28dfa358aed0f33e8",
                  "width": 100,
                  "height": 100
              },
              "SMALL": {
                  "url": "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0-m.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIb%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDAgsw8%2Fyf4K%2FgcFk8uqCGzkIyfxmJrsbI7CXBUzvj9gAIhAM5OwVliME65m13kdcYFPTxHACWobapY5HR5%2BDXnv7LfKswECH8QABoMMTg3MDE3MTUwOTg2IgyGh0%2BDZpcPWyTlfp8qqQRJ4yzWIuM5hsONbgmI5x572OZW1QdelchHY4nOl1xSaZVXpBKcmUsKgyq4yNeYwO39kTnnQe4%2FcceNQlwThDD72X3ZwqmbMfOyjXP6ieq1PKIXj9tyCCd6D8r9On0gdkt7Y0F30NlZYeT1Jnc5SnSeO78syfVLN4ggtALUa35gbGBvuSwEBuq9S92R6bjNNCJFNM3C0TOb8r8QOOMczr6WVM8ZLKbEp9Yja388CxPokQwXAHPo%2FwxFlcbY97uestQlMmXlz0i0U1vTJYaHJKzXTfZZ6nndMEL1M%2BU6Ahbu6zVqawP6s1dfRorRRXSBEnXhkOfuXCpHzVvOJlVY7Y3az3%2BrcaPYW6LNEvAcw0a8bbvuxVQ8e%2FLN1cZr3FrHKaxRc49W5QoHA1FkIuLFXWcOQNgkUZx%2FZTQbELBK7ej6LFgSsDIaGv4a0EsBhTwKVOtzXDNYl2CCoZsjYaOHbXLP8OfLbUR0H1IO0JUAwVyN7tGJMsmfsGhj9xpDCaZ6BFL7uqo90JqoL2oQFyRAp5aj3V6u20a0jHtwBlXBXfYlG%2Ffetf1syV%2BVEZctJR1nCXnV%2BUy7z5N8qLMx%2ByRZcX4gs%2F28TrY%2F6UvKpVrVqpgtqn9W0%2F4%2F1sahYLiH8fOuclcy3IUNFzyLeGZjAjiHiFthHpxCaP%2FuNh3NSZXRBVYjgiPfXMac%2BYOr7RhzVslkZSAK4I76vFp4AuVK5ovIH7Gs13B5IcZmmuIKMI%2FntZsGOqgBuc3V2D%2BawabAqeo2kpHN51inxPD%2BCn7ecOJGAQxYz7re6vvOxrYO1gHwwwEOsKNOWqzsVTE%2F1Ss26p6Dl6E8d4FpO9tO%2Bav3fMIZ4C%2BUIySVrhWN6LLHEr%2BLr23Ugra%2B5fM6yzncG121HWb9qfQYcIvj7zUjjIKcxS%2FytPEOI0UFDPRbg9txmdpq%2FZIr1XsdUJeL2H%2BjqXMas6f8H%2FJCciVAS21epKGR&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221110T221800Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFJN7IHGPB%2F20221110%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=6a2fe1d5898726479e4f50951fa6da8c6c3964c472153a83d8d703951d06ece3",
                  "width": 200,
                  "height": 200
              },
              "REGULAR": {
                  "url": "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIb%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDAgsw8%2Fyf4K%2FgcFk8uqCGzkIyfxmJrsbI7CXBUzvj9gAIhAM5OwVliME65m13kdcYFPTxHACWobapY5HR5%2BDXnv7LfKswECH8QABoMMTg3MDE3MTUwOTg2IgyGh0%2BDZpcPWyTlfp8qqQRJ4yzWIuM5hsONbgmI5x572OZW1QdelchHY4nOl1xSaZVXpBKcmUsKgyq4yNeYwO39kTnnQe4%2FcceNQlwThDD72X3ZwqmbMfOyjXP6ieq1PKIXj9tyCCd6D8r9On0gdkt7Y0F30NlZYeT1Jnc5SnSeO78syfVLN4ggtALUa35gbGBvuSwEBuq9S92R6bjNNCJFNM3C0TOb8r8QOOMczr6WVM8ZLKbEp9Yja388CxPokQwXAHPo%2FwxFlcbY97uestQlMmXlz0i0U1vTJYaHJKzXTfZZ6nndMEL1M%2BU6Ahbu6zVqawP6s1dfRorRRXSBEnXhkOfuXCpHzVvOJlVY7Y3az3%2BrcaPYW6LNEvAcw0a8bbvuxVQ8e%2FLN1cZr3FrHKaxRc49W5QoHA1FkIuLFXWcOQNgkUZx%2FZTQbELBK7ej6LFgSsDIaGv4a0EsBhTwKVOtzXDNYl2CCoZsjYaOHbXLP8OfLbUR0H1IO0JUAwVyN7tGJMsmfsGhj9xpDCaZ6BFL7uqo90JqoL2oQFyRAp5aj3V6u20a0jHtwBlXBXfYlG%2Ffetf1syV%2BVEZctJR1nCXnV%2BUy7z5N8qLMx%2ByRZcX4gs%2F28TrY%2F6UvKpVrVqpgtqn9W0%2F4%2F1sahYLiH8fOuclcy3IUNFzyLeGZjAjiHiFthHpxCaP%2FuNh3NSZXRBVYjgiPfXMac%2BYOr7RhzVslkZSAK4I76vFp4AuVK5ovIH7Gs13B5IcZmmuIKMI%2FntZsGOqgBuc3V2D%2BawabAqeo2kpHN51inxPD%2BCn7ecOJGAQxYz7re6vvOxrYO1gHwwwEOsKNOWqzsVTE%2F1Ss26p6Dl6E8d4FpO9tO%2Bav3fMIZ4C%2BUIySVrhWN6LLHEr%2BLr23Ugra%2B5fM6yzncG121HWb9qfQYcIvj7zUjjIKcxS%2FytPEOI0UFDPRbg9txmdpq%2FZIr1XsdUJeL2H%2BjqXMas6f8H%2FJCciVAS21epKGR&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221110T221800Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFJN7IHGPB%2F20221110%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=cdc9fd7bc254485a9994a420ae2b64eff5cba87a72f94e31361de5b6142cd6ad",
                  "width": 300,
                  "height": 300
              },
              "LARGE": {
                  "url": "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0-l.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIb%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDAgsw8%2Fyf4K%2FgcFk8uqCGzkIyfxmJrsbI7CXBUzvj9gAIhAM5OwVliME65m13kdcYFPTxHACWobapY5HR5%2BDXnv7LfKswECH8QABoMMTg3MDE3MTUwOTg2IgyGh0%2BDZpcPWyTlfp8qqQRJ4yzWIuM5hsONbgmI5x572OZW1QdelchHY4nOl1xSaZVXpBKcmUsKgyq4yNeYwO39kTnnQe4%2FcceNQlwThDD72X3ZwqmbMfOyjXP6ieq1PKIXj9tyCCd6D8r9On0gdkt7Y0F30NlZYeT1Jnc5SnSeO78syfVLN4ggtALUa35gbGBvuSwEBuq9S92R6bjNNCJFNM3C0TOb8r8QOOMczr6WVM8ZLKbEp9Yja388CxPokQwXAHPo%2FwxFlcbY97uestQlMmXlz0i0U1vTJYaHJKzXTfZZ6nndMEL1M%2BU6Ahbu6zVqawP6s1dfRorRRXSBEnXhkOfuXCpHzVvOJlVY7Y3az3%2BrcaPYW6LNEvAcw0a8bbvuxVQ8e%2FLN1cZr3FrHKaxRc49W5QoHA1FkIuLFXWcOQNgkUZx%2FZTQbELBK7ej6LFgSsDIaGv4a0EsBhTwKVOtzXDNYl2CCoZsjYaOHbXLP8OfLbUR0H1IO0JUAwVyN7tGJMsmfsGhj9xpDCaZ6BFL7uqo90JqoL2oQFyRAp5aj3V6u20a0jHtwBlXBXfYlG%2Ffetf1syV%2BVEZctJR1nCXnV%2BUy7z5N8qLMx%2ByRZcX4gs%2F28TrY%2F6UvKpVrVqpgtqn9W0%2F4%2F1sahYLiH8fOuclcy3IUNFzyLeGZjAjiHiFthHpxCaP%2FuNh3NSZXRBVYjgiPfXMac%2BYOr7RhzVslkZSAK4I76vFp4AuVK5ovIH7Gs13B5IcZmmuIKMI%2FntZsGOqgBuc3V2D%2BawabAqeo2kpHN51inxPD%2BCn7ecOJGAQxYz7re6vvOxrYO1gHwwwEOsKNOWqzsVTE%2F1Ss26p6Dl6E8d4FpO9tO%2Bav3fMIZ4C%2BUIySVrhWN6LLHEr%2BLr23Ugra%2B5fM6yzncG121HWb9qfQYcIvj7zUjjIKcxS%2FytPEOI0UFDPRbg9txmdpq%2FZIr1XsdUJeL2H%2BjqXMas6f8H%2FJCciVAS21epKGR&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221110T221800Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFJN7IHGPB%2F20221110%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=6dbb47ff973f96cd98588ec244a3dd410c191759aa944b1342dcf2cf284333cd",
                  "width": 600,
                  "height": 600
              }
          },
          "source": "Serious Eats",
          "url": "https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html",
          "shareAs": "http://www.edamam.com/recipe/andy-ricker-s-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup-3a551652abf5a1cef1421660d1b657d9/thailand",
          "yield": 2.0,
          "dietLabels": [
              "Low-Fat",
              "Low-Sodium"
          ],
          "healthLabels": [
              "Low Potassium",
              "Kidney-Friendly",
              "Vegan",
              "Vegetarian",
              "Pescatarian",
              "Dairy-Free",
              "Gluten-Free",
              "Wheat-Free",
              "Egg-Free",
              "Peanut-Free",
              "Tree-Nut-Free",
              "Soy-Free",
              "Fish-Free",
              "Shellfish-Free",
              "Pork-Free",
              "Red-Meat-Free",
              "Crustacean-Free",
              "Celery-Free",
              "Mustard-Free",
              "Sesame-Free",
              "Lupine-Free",
              "Mollusk-Free",
              "Alcohol-Free",
              "No oil added",
              "FODMAP-Free",
              "Kosher"
          ],
          "cautions": [],
          "ingredientLines": [
              "2 1/2 ounces palm sugar, coarsely chopped",
              "1/4 cup plus 1 tablespoon water"
          ],
          "ingredients": [
              {
                  "text": "2 1/2 ounces palm sugar, coarsely chopped",
                  "quantity": 2.5,
                  "measure": "ounce",
                  "food": "palm sugar",
                  "weight": 70.8738078125,
                  "foodCategory": "sugars",
                  "foodId": "food_aodgtqwbmeu5f6bxeffn0art3bga",
                  "image": "https://www.edamam.com/food-img/8c6/8c6662bd73900645c6385b51a95d9b03.jpg"
              },
              {
                  "text": "1/4 cup plus 1 tablespoon water",
                  "quantity": 0.25,
                  "measure": "cup",
                  "food": "water",
                  "weight": 59.25,
                  "foodCategory": "water",
                  "foodId": "food_a99vzubbk1ayrsad318rvbzr3dh0",
                  "image": "https://www.edamam.com/food-img/5dd/5dd9d1361847b2ca53c4b19a8f92627e.jpg"
              },
              {
                  "text": "1/4 cup plus 1 tablespoon water",
                  "quantity": 1.0,
                  "measure": "tablespoon",
                  "food": "water",
                  "weight": 14.786764781,
                  "foodCategory": "water",
                  "foodId": "food_a99vzubbk1ayrsad318rvbzr3dh0",
                  "image": "https://www.edamam.com/food-img/5dd/5dd9d1361847b2ca53c4b19a8f92627e.jpg"
              }
          ],
          "calories": 269.3204696875,
          "totalWeight": 144.91057259349998,
          "totalTime": 5.0,
          "cuisineType": [
              "american"
          ],
          "mealType": [
              "breakfast"
          ],
          "dishType": [
              "starter"
          ],
          "totalNutrients": {
              "ENERC_KCAL": {
                  "label": "Energy",
                  "quantity": 269.3204696875,
                  "unit": "kcal"
              },
              "FAT": {
                  "label": "Fat",
                  "quantity": 0.0,
                  "unit": "g"
              },
              "FASAT": {
                  "label": "Saturated",
                  "quantity": 0.0,
                  "unit": "g"
              },
              "FATRN": {
                  "label": "Trans",
                  "quantity": 0.0,
                  "unit": "g"
              },
              "FAMS": {
                  "label": "Monounsaturated",
                  "quantity": 0.0,
                  "unit": "g"
              },
              "FAPU": {
                  "label": "Polyunsaturated",
                  "quantity": 0.0,
                  "unit": "g"
              },
              "CHOCDF": {
                  "label": "Carbs",
                  "quantity": 69.52011808328125,
                  "unit": "g"
              },
              "CHOCDF.net": {
                  "label": "Carbohydrates (net)",
                  "quantity": 69.52011808328125,
                  "unit": "g"
              },
              "FIBTG": {
                  "label": "Fiber",
                  "quantity": 0.0,
                  "unit": "g"
              },
              "SUGAR": {
                  "label": "Sugars",
                  "quantity": 68.76176833968749,
                  "unit": "g"
              },
              "SUGAR.added": {
                  "label": "Sugars, added",
                  "quantity": 68.76176833968749,
                  "unit": "g"
              },
              "PROCNT": {
                  "label": "Protein",
                  "quantity": 0.085048569375,
                  "unit": "g"
              },
              "CHOLE": {
                  "label": "Cholesterol",
                  "quantity": 0.0,
                  "unit": "mg"
              },
              "NA": {
                  "label": "Sodium",
                  "quantity": 22.80613677874,
                  "unit": "mg"
              },
              "CA": {
                  "label": "Calcium",
                  "quantity": 61.046363427805005,
                  "unit": "mg"
              },
              "MG": {
                  "label": "Magnesium",
                  "quantity": 7.1190103509350005,
                  "unit": "mg"
              },
              "K": {
                  "label": "Potassium",
                  "quantity": 94.262164390625,
                  "unit": "mg"
              },
              "FE": {
                  "label": "Iron",
                  "quantity": 0.50320403546875,
                  "unit": "mg"
              },
              "ZN": {
                  "label": "Zinc",
                  "quantity": 0.028665818821849997,
                  "unit": "mg"
              },
              "P": {
                  "label": "Phosphorus",
                  "quantity": 2.8349523125,
                  "unit": "mg"
              },
              "VITA_RAE": {
                  "label": "Vitamin A",
                  "quantity": 0.0,
                  "unit": "µg"
              },
              "VITC": {
                  "label": "Vitamin C",
                  "quantity": 0.0,
                  "unit": "mg"
              },
              "THIA": {
                  "label": "Thiamin (B1)",
                  "quantity": 0.0,
                  "unit": "mg"
              },
              "RIBF": {
                  "label": "Riboflavin (B2)",
                  "quantity": 0.0,
                  "unit": "mg"
              },
              "NIA": {
                  "label": "Niacin (B3)",
                  "quantity": 0.07796118859375,
                  "unit": "mg"
              },
              "VITB6A": {
                  "label": "Vitamin B6",
                  "quantity": 0.029058261203125,
                  "unit": "mg"
              },
              "FOLDFE": {
                  "label": "Folate equivalent (total)",
                  "quantity": 0.708738078125,
                  "unit": "µg"
              },
              "FOLFD": {
                  "label": "Folate (food)",
                  "quantity": 0.708738078125,
                  "unit": "µg"
              },
              "FOLAC": {
                  "label": "Folic acid",
                  "quantity": 0.0,
                  "unit": "µg"
              },
              "VITB12": {
                  "label": "Vitamin B12",
                  "quantity": 0.0,
                  "unit": "µg"
              },
              "VITD": {
                  "label": "Vitamin D",
                  "quantity": 0.0,
                  "unit": "µg"
              },
              "TOCPHA": {
                  "label": "Vitamin E",
                  "quantity": 0.0,
                  "unit": "mg"
              },
              "VITK1": {
                  "label": "Vitamin K",
                  "quantity": 0.0,
                  "unit": "µg"
              },
              "Sugar.alcohol": {
                  "label": "Sugar alcohol",
                  "quantity": 0.0,
                  "unit": "g"
              },
              "WATER": {
                  "label": "Water",
                  "quantity": 74.91243704090651,
                  "unit": "g"
              }
          },
          "totalDaily": {
              "ENERC_KCAL": {
                  "label": "Energy",
                  "quantity": 13.466023484375,
                  "unit": "%"
              },
              "FAT": {
                  "label": "Fat",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "FASAT": {
                  "label": "Saturated",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "CHOCDF": {
                  "label": "Carbs",
                  "quantity": 23.173372694427083,
                  "unit": "%"
              },
              "FIBTG": {
                  "label": "Fiber",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "PROCNT": {
                  "label": "Protein",
                  "quantity": 0.17009713875,
                  "unit": "%"
              },
              "CHOLE": {
                  "label": "Cholesterol",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "NA": {
                  "label": "Sodium",
                  "quantity": 0.9502556991141667,
                  "unit": "%"
              },
              "CA": {
                  "label": "Calcium",
                  "quantity": 6.104636342780501,
                  "unit": "%"
              },
              "MG": {
                  "label": "Magnesium",
                  "quantity": 1.6950024645083335,
                  "unit": "%"
              },
              "K": {
                  "label": "Potassium",
                  "quantity": 2.0055779657579786,
                  "unit": "%"
              },
              "FE": {
                  "label": "Iron",
                  "quantity": 2.795577974826389,
                  "unit": "%"
              },
              "ZN": {
                  "label": "Zinc",
                  "quantity": 0.26059835292590905,
                  "unit": "%"
              },
              "P": {
                  "label": "Phosphorus",
                  "quantity": 0.4049931875,
                  "unit": "%"
              },
              "VITA_RAE": {
                  "label": "Vitamin A",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "VITC": {
                  "label": "Vitamin C",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "THIA": {
                  "label": "Thiamin (B1)",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "RIBF": {
                  "label": "Riboflavin (B2)",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "NIA": {
                  "label": "Niacin (B3)",
                  "quantity": 0.48725742871093747,
                  "unit": "%"
              },
              "VITB6A": {
                  "label": "Vitamin B6",
                  "quantity": 2.2352508617788462,
                  "unit": "%"
              },
              "FOLDFE": {
                  "label": "Folate equivalent (total)",
                  "quantity": 0.17718451953125,
                  "unit": "%"
              },
              "VITB12": {
                  "label": "Vitamin B12",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "VITD": {
                  "label": "Vitamin D",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "TOCPHA": {
                  "label": "Vitamin E",
                  "quantity": 0.0,
                  "unit": "%"
              },
              "VITK1": {
                  "label": "Vitamin K",
                  "quantity": 0.0,
                  "unit": "%"
              }
          },
          "digest": [
              {
                  "label": "Fat",
                  "tag": "FAT",
                  "schemaOrgTag": "fatContent",
                  "total": 0.0,
                  "hasRDI": true,
                  "daily": 0.0,
                  "unit": "g",
                  "sub": [
                      {
                          "label": "Saturated",
                          "tag": "FASAT",
                          "schemaOrgTag": "saturatedFatContent",
                          "total": 0.0,
                          "hasRDI": true,
                          "daily": 0.0,
                          "unit": "g"
                      },
                      {
                          "label": "Trans",
                          "tag": "FATRN",
                          "schemaOrgTag": "transFatContent",
                          "total": 0.0,
                          "hasRDI": false,
                          "daily": 0.0,
                          "unit": "g"
                      },
                      {
                          "label": "Monounsaturated",
                          "tag": "FAMS",
                          "schemaOrgTag": "null",
                          "total": 0.0,
                          "hasRDI": false,
                          "daily": 0.0,
                          "unit": "g"
                      },
                      {
                          "label": "Polyunsaturated",
                          "tag": "FAPU",
                          "schemaOrgTag": "null",
                          "total": 0.0,
                          "hasRDI": false,
                          "daily": 0.0,
                          "unit": "g"
                      }
                  ]
              },
              {
                  "label": "Carbs",
                  "tag": "CHOCDF",
                  "schemaOrgTag": "carbohydrateContent",
                  "total": 69.52011808328125,
                  "hasRDI": true,
                  "daily": 23.173372694427083,
                  "unit": "g",
                  "sub": [
                      {
                          "label": "Carbs (net)",
                          "tag": "CHOCDF.net",
                          "schemaOrgTag": "null",
                          "total": 69.52011808328125,
                          "hasRDI": false,
                          "daily": 0.0,
                          "unit": "g"
                      },
                      {
                          "label": "Fiber",
                          "tag": "FIBTG",
                          "schemaOrgTag": "fiberContent",
                          "total": 0.0,
                          "hasRDI": true,
                          "daily": 0.0,
                          "unit": "g"
                      },
                      {
                          "label": "Sugars",
                          "tag": "SUGAR",
                          "schemaOrgTag": "sugarContent",
                          "total": 68.76176833968749,
                          "hasRDI": false,
                          "daily": 0.0,
                          "unit": "g"
                      },
                      {
                          "label": "Sugars, added",
                          "tag": "SUGAR.added",
                          "schemaOrgTag": "null",
                          "total": 68.76176833968749,
                          "hasRDI": false,
                          "daily": 0.0,
                          "unit": "g"
                      }
                  ]
              },
              {
                  "label": "Protein",
                  "tag": "PROCNT",
                  "schemaOrgTag": "proteinContent",
                  "total": 0.085048569375,
                  "hasRDI": true,
                  "daily": 0.17009713875,
                  "unit": "g"
              },
              {
                  "label": "Cholesterol",
                  "tag": "CHOLE",
                  "schemaOrgTag": "cholesterolContent",
                  "total": 0.0,
                  "hasRDI": true,
                  "daily": 0.0,
                  "unit": "mg"
              },
              {
                  "label": "Sodium",
                  "tag": "NA",
                  "schemaOrgTag": "sodiumContent",
                  "total": 22.80613677874,
                  "hasRDI": true,
                  "daily": 0.9502556991141667,
                  "unit": "mg"
              },
              {
                  "label": "Calcium",
                  "tag": "CA",
                  "schemaOrgTag": "null",
                  "total": 61.046363427805005,
                  "hasRDI": true,
                  "daily": 6.104636342780501,
                  "unit": "mg"
              },
              {
                  "label": "Magnesium",
                  "tag": "MG",
                  "schemaOrgTag": "null",
                  "total": 7.1190103509350005,
                  "hasRDI": true,
                  "daily": 1.6950024645083335,
                  "unit": "mg"
              },
              {
                  "label": "Potassium",
                  "tag": "K",
                  "schemaOrgTag": "null",
                  "total": 94.262164390625,
                  "hasRDI": true,
                  "daily": 2.0055779657579786,
                  "unit": "mg"
              },
              {
                  "label": "Iron",
                  "tag": "FE",
                  "schemaOrgTag": "null",
                  "total": 0.50320403546875,
                  "hasRDI": true,
                  "daily": 2.795577974826389,
                  "unit": "mg"
              },
              {
                  "label": "Zinc",
                  "tag": "ZN",
                  "schemaOrgTag": "null",
                  "total": 0.028665818821849997,
                  "hasRDI": true,
                  "daily": 0.26059835292590905,
                  "unit": "mg"
              },
              {
                  "label": "Phosphorus",
                  "tag": "P",
                  "schemaOrgTag": "null",
                  "total": 2.8349523125,
                  "hasRDI": true,
                  "daily": 0.4049931875,
                  "unit": "mg"
              },
              {
                  "label": "Vitamin A",
                  "tag": "VITA_RAE",
                  "schemaOrgTag": null,
                  "total": 0.0,
                  "hasRDI": true,
                  "daily": 0.0,
                  "unit": "µg"
              },
              {
                  "label": "Vitamin C",
                  "tag": "VITC",
                  "schemaOrgTag": "null",
                  "total": 0.0,
                  "hasRDI": true,
                  "daily": 0.0,
                  "unit": "mg"
              },
              {
                  "label": "Thiamin (B1)",
                  "tag": "THIA",
                  "schemaOrgTag": "null",
                  "total": 0.0,
                  "hasRDI": true,
                  "daily": 0.0,
                  "unit": "mg"
              },
              {
                  "label": "Riboflavin (B2)",
                  "tag": "RIBF",
                  "schemaOrgTag": "null",
                  "total": 0.0,
                  "hasRDI": true,
                  "daily": 0.0,
                  "unit": "mg"
              },
              {
                  "label": "Niacin (B3)",
                  "tag": "NIA",
                  "schemaOrgTag": "null",
                  "total": 0.07796118859375,
                  "hasRDI": true,
                  "daily": 0.48725742871093747,
                  "unit": "mg"
              },
              {
                  "label": "Vitamin B6",
                  "tag": "VITB6A",
                  "schemaOrgTag": "null",
                  "total": 0.029058261203125,
                  "hasRDI": true,
                  "daily": 2.2352508617788462,
                  "unit": "mg"
              },
              {
                  "label": "Folate equivalent (total)",
                  "tag": "FOLDFE",
                  "schemaOrgTag": "null",
                  "total": 0.708738078125,
                  "hasRDI": true,
                  "daily": 0.17718451953125,
                  "unit": "µg"
              },
              {
                  "label": "Folate (food)",
                  "tag": "FOLFD",
                  "schemaOrgTag": "null",
                  "total": 0.708738078125,
                  "hasRDI": false,
                  "daily": 0.0,
                  "unit": "µg"
              },
              {
                  "label": "Folic acid",
                  "tag": "FOLAC",
                  "schemaOrgTag": "null",
                  "total": 0.0,
                  "hasRDI": false,
                  "daily": 0.0,
                  "unit": "µg"
              },
              {
                  "label": "Vitamin B12",
                  "tag": "VITB12",
                  "schemaOrgTag": "null",
                  "total": 0.0,
                  "hasRDI": true,
                  "daily": 0.0,
                  "unit": "µg"
              },
              {
                  "label": "Vitamin D",
                  "tag": "VITD",
                  "schemaOrgTag": "null",
                  "total": 0.0,
                  "hasRDI": true,
                  "daily": 0.0,
                  "unit": "µg"
              },
              {
                  "label": "Vitamin E",
                  "tag": "TOCPHA",
                  "schemaOrgTag": "null",
                  "total": 0.0,
                  "hasRDI": true,
                  "daily": 0.0,
                  "unit": "mg"
              },
              {
                  "label": "Vitamin K",
                  "tag": "VITK1",
                  "schemaOrgTag": "null",
                  "total": 0.0,
                  "hasRDI": true,
                  "daily": 0.0,
                  "unit": "µg"
              },
              {
                  "label": "Sugar alcohols",
                  "tag": "Sugar.alcohol",
                  "schemaOrgTag": "null",
                  "total": 0.0,
                  "hasRDI": false,
                  "daily": 0.0,
                  "unit": "g"
              },
              {
                  "label": "Water",
                  "tag": "WATER",
                  "schemaOrgTag": "null",
                  "total": 74.91243704090651,
                  "hasRDI": false,
                  "daily": 0.0,
                  "unit": "g"
              }
          ]
      },
      "_links": {
          "self": {
              "href": "https://api.edamam.com/api/recipes/v2/3a551652abf5a1cef1421660d1b657d9?type=public&app_id=50e95771&app_key=9295f8294eb1c564d750a6eb58ca5d6d",
              "title": "Self"
          }
      }
  }

  recipe = Recipe.new(recipe_data)

  expect(recipe).to be_a Recipe
  expect(recipe.title).to eq("Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)")
  expect(recipe.url).to eq('http://www.edamam.com/ontologies/edamam.owl#recipe_3a551652abf5a1cef1421660d1b657d9')
  expect(recipe.image).to eq('https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIb%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDAgsw8%2Fyf4K%2FgcFk8uqCGzkIyfxmJrsbI7CXBUzvj9gAIhAM5OwVliME65m13kdcYFPTxHACWobapY5HR5%2BDXnv7LfKswECH8QABoMMTg3MDE3MTUwOTg2IgyGh0%2BDZpcPWyTlfp8qqQRJ4yzWIuM5hsONbgmI5x572OZW1QdelchHY4nOl1xSaZVXpBKcmUsKgyq4yNeYwO39kTnnQe4%2FcceNQlwThDD72X3ZwqmbMfOyjXP6ieq1PKIXj9tyCCd6D8r9On0gdkt7Y0F30NlZYeT1Jnc5SnSeO78syfVLN4ggtALUa35gbGBvuSwEBuq9S92R6bjNNCJFNM3C0TOb8r8QOOMczr6WVM8ZLKbEp9Yja388CxPokQwXAHPo%2FwxFlcbY97uestQlMmXlz0i0U1vTJYaHJKzXTfZZ6nndMEL1M%2BU6Ahbu6zVqawP6s1dfRorRRXSBEnXhkOfuXCpHzVvOJlVY7Y3az3%2BrcaPYW6LNEvAcw0a8bbvuxVQ8e%2FLN1cZr3FrHKaxRc49W5QoHA1FkIuLFXWcOQNgkUZx%2FZTQbELBK7ej6LFgSsDIaGv4a0EsBhTwKVOtzXDNYl2CCoZsjYaOHbXLP8OfLbUR0H1IO0JUAwVyN7tGJMsmfsGhj9xpDCaZ6BFL7uqo90JqoL2oQFyRAp5aj3V6u20a0jHtwBlXBXfYlG%2Ffetf1syV%2BVEZctJR1nCXnV%2BUy7z5N8qLMx%2ByRZcX4gs%2F28TrY%2F6UvKpVrVqpgtqn9W0%2F4%2F1sahYLiH8fOuclcy3IUNFzyLeGZjAjiHiFthHpxCaP%2FuNh3NSZXRBVYjgiPfXMac%2BYOr7RhzVslkZSAK4I76vFp4AuVK5ovIH7Gs13B5IcZmmuIKMI%2FntZsGOqgBuc3V2D%2BawabAqeo2kpHN51inxPD%2BCn7ecOJGAQxYz7re6vvOxrYO1gHwwwEOsKNOWqzsVTE%2F1Ss26p6Dl6E8d4FpO9tO%2Bav3fMIZ4C%2BUIySVrhWN6LLHEr%2BLr23Ugra%2B5fM6yzncG121HWb9qfQYcIvj7zUjjIKcxS%2FytPEOI0UFDPRbg9txmdpq%2FZIr1XsdUJeL2H%2BjqXMas6f8H%2FJCciVAS21epKGR&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221110T221800Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFJN7IHGPB%2F20221110%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=cdc9fd7bc254485a9994a420ae2b64eff5cba87a72f94e31361de5b6142cd6ad')
  end
end