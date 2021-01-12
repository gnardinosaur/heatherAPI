# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#Chefs
# Chef.create(username: "nick1", first_name: "nick", password:"nick1")
# Chef.create(username: "heather1", first_name: "heather", password:"heather1")

#RecipeBooks
# RecipeBook.create(title:"n_book1", chef_id: 1)
# RecipeBook.create(title:"h_book1", chef_id: 2) 

# Recipes
# Recipe.create(title:"nachos", prep_time:"2 minutes", ingredients:{"chips": "1 bag", "beans": "1/2 can", "salsa": "a ton"}, steps: ["blah", "meh", "eat"], notes: "yep", tags: ["mexican", "delicious", "fav"], chef_id:1)
# Recipe.create(title:"cookies", prep_time:"9 minutes", ingredients:{"chocolate chips":"1 bag", "flour":"1 cup", "butter":"lots"}, steps: ["mix", "bake", "enjoy"], notes: "the more chocolate the better", tags: ["dessert", "yum"], chef_id:2)

# SavedRecipes
# SavedRecipe.create(title:"nachos", prep_time:"2 minutes", ingredients:{"chips": "1 bag", "beans": "1/2 can", "salsa": "a ton"}, steps: ["blah", "meh", "eat"], notes: "yep", tags: ["mexican", "delicious", "fav"], recipe_book_id:1, recipe_id:1, chef_id:1)
# SavedRecipe.create(title:"cookies", prep_time:"9 minutes", ingredients:{"chocolate chips":"1 bag", "flour":"1 cup", "butter":"lots"}, steps: ["mix", "bake", "enjoy"], notes: "the more chocolate the better", tags: ["dessert", "yum"], recipe_book_id:2, recipe_id:2, chef_id:2)
