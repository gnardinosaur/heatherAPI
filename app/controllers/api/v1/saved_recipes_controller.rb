class SavedRecipesController < ApplicationController

  def create 
    @saved_recipe = SavedRecipe.create(
      title: params[:title], 
      prep_time: params[:prep_time],
      source: params[:source],
      ingredients: params[:ingredients],
      steps: params[:steps],
      notes: params[:notes],
      tags: params[:tags],
      last_prepared: params[:last_prepared],
      chef_id: params[:chef_id],
      recipe_book_id: params[:recipe_book_id], 
      recipe_id: params[:recipe_id]
    )
    render json: @saved_recipe
  end 
  
  def index 
    @saved_recipes = SavedRecipe.all
    render json: @saved_recipes
  end 

end
