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

# recipe = Recipe.create(title:'nachos', prep_time:'2 minutes', ingredients: {:chips => '1 bag', :beans => '1/2 can’, :salsa => ‘a ton’}, steps: '1. blah, 2. meh, 3. eat', notes: 'yep', tags: ['mexican', 'delicious', 'fav'])
