# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_12_134029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chefs", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe_books", force: :cascade do |t|
    t.string "title"
    t.bigint "chef_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chef_id"], name: "index_recipe_books_on_chef_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.string "prep_time"
    t.string "source"
    t.json "ingredients"
    t.string "steps", array: true
    t.text "notes"
    t.string "tags", array: true
    t.bigint "chef_id", null: false
    t.index ["chef_id"], name: "index_recipes_on_chef_id"
  end

  create_table "saved_recipes", force: :cascade do |t|
    t.string "title"
    t.string "prep_time"
    t.string "source"
    t.json "ingredients"
    t.string "steps", array: true
    t.text "notes"
    t.string "tags", array: true
    t.date "last_prepared"
    t.bigint "chef_id", null: false
    t.bigint "recipe_book_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chef_id"], name: "index_saved_recipes_on_chef_id"
    t.index ["recipe_book_id"], name: "index_saved_recipes_on_recipe_book_id"
    t.index ["recipe_id"], name: "index_saved_recipes_on_recipe_id"
  end

  add_foreign_key "recipe_books", "chefs"
  add_foreign_key "recipes", "chefs"
  add_foreign_key "saved_recipes", "chefs"
  add_foreign_key "saved_recipes", "recipe_books"
  add_foreign_key "saved_recipes", "recipes"
end
