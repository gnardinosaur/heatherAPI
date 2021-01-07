class RecipeBooksController < ApplicationController

  def create 
    @recipe_book = RecipeBook.create(
      title: params[:title], 
      prep_time: params[:prep_time],
      source: params[:source],
      ingredients: params[:ingredients],
      steps: params[:steps],
      notes: params[:notes],
      tags: params[:tags],
      last_prep_date: params[:last_prep_date]
    )
    render json: @recipe_book
  end 
  
  def index 
    
  end 

end
