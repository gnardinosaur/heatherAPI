class Api::V1::ChefsController < ApplicationController

  def create 
    @chef = Chef.create(chef_params)
    if @chef.valid? 
      render json: { chef: ChefSerializer.new(@chef), messages: 'Chef Created' }
    else
      # Do I need to change the way this is formatted to receive the error message on the frontend? Is the proper syntax @chef.errors.full_messages?
      render json: { messages: @chef }
    end
  end

  def index
    @chefs = Chef.all
    render json: @chefs
  end 

  private 

  def chef_params
    params.require(:chef).permit(:username, :first_name, :password)
  end 

end
