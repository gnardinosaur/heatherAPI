class RecipeBooksController < ApplicationController
  
  def create 
    @recipe_book = RecipeBook.create(name: params[:name])
    render json: @recipe_book
  end 
  
  def index 
    @recipe_books = RecipeBook.all
    render json: @recipe_books
  end 
  
end

