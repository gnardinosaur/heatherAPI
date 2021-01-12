class Chef < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  has_many :recipes
  has_one :recipe_book
  has_many :saved_recipes, through: :recipe_book
end
