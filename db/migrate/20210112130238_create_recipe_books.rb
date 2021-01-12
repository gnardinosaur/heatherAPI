class CreateRecipeBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_books do |t|
      t.string :title
      t.references :chef, null: false, foreign_key: true

      t.timestamps 
    end
  end
end
