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
      last_prep_date: params[:last_prep_date]
    )
    render json: @recipe
  end 
  
  def index 
    @recipes = Recipe.all
    render json: @recipes
  end 

end

