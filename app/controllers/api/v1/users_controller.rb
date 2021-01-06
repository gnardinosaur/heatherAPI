class Api::V1::UsersController < ApplicationController
  
  def create 
    @user = User.create(user_params)
    if @user.valid? 
      render json: { user: UserSerializer.new(@user), messages: 'User Created' }
    else
      render json: { messages: @user }
    end
  end

  private 

  def user_params
    params.require(:user).permit(:name, :password)
  end 

end
