class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name

      t.timestamps
    end
  end
end
