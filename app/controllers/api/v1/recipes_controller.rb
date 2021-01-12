class RecipesController < ApplicationController
  
  def create 
    @recipe = Recipe.create(
      title: params[:title], 
      prep_time: params[:prep_time],
      source: params[:source],
      ingredients: params[:ingredients],
      steps: params[:steps],
      notes: params[:notes],
      tags: params[:tags],
      chef_id: params[:chef_id]
    )
    render json: @recipe
  end 
  
  def index 
    @recipes = Recipe.all
    render json: @recipes
  end 

end

