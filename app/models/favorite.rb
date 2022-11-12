class Favorite < ApplicationRecord
  belongs_to :user

  validates :country, presence: true
  validates :recipe_link, presence: true
  validates :recipe_title, presence: true
  validates :user_id, presence: true
end
