class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :prep_time
      t.string :source
      t.string :ingredients, array:true
      t.text :steps
      t.text :notes
      t.string :tags, array: true
      t.date :last_prep_date

      t.timestamps
    end
  end
end
