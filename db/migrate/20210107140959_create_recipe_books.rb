class CreateRecipeBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_books do |t|
      t.string :title
      t.string :prep_time
      t.string :source
      t.hstore :ingredients
      t.text :steps
      t.text :notes
      t.string :tags, array: true
      t.date :last_prep_date

      t.timestamps
    end
  end
end
