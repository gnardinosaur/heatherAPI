class SavedRecipe < ApplicationRecord
  belongs_to :chef
  belongs_to :recipe_book
  belongs_to :recipe
end
