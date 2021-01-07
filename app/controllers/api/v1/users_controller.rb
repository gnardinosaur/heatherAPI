class Api::V1::UsersController < ApplicationController
  
  def create 
    @user = User.create(user_params)
    if @user.valid? 
      render json: { user: UserSerializer.new(@user), messages: 'User Created' }
    else
      # Do I need to change the way this is formatted to receive the error message on the frontend? Is the proper syntax @user.errors.full_messages?
      render json: { messages: @user }
    end
  end

  def index
    @users = User.all
    render json: @users
  end 

  private 

  def user_params
    params.require(:user).permit(:name, :password)
  end 

end