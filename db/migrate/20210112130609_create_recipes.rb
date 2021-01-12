class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :prep_time
      t.string :source
      t.json :ingredients
      t.string :steps, array: true
      t.text :notes
      t.string :tags, array: true
      t.references :chef, null: false, foreign_key: true 
    end
  end
end
