class CreateSavedRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_recipes do |t|
      t.string :title
      t.string :prep_time
      t.string :source
      t.json :ingredients
      t.string :steps, array: true
      t.text :notes
      t.string :tags, array: true
      t.date :last_prepared
      t.references :chef, null: false, foreign_key: true 
      t.references :recipe_book, null: false, foreign_key: true 
      t.references :recipe, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
