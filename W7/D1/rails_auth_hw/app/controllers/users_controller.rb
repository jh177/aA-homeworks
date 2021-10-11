class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      render :new
    else
      render :new
    end
  end

  def new
    render :new
  end


  def user_params
    params.require(:user).permit(:username, :password)
  end

end
