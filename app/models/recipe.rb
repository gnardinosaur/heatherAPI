class Recipe < ApplicationRecord
  has_and_belongs_to_many :recipe_books
end
