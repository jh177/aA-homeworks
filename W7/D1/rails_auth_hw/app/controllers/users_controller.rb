class UsersController < ApplicationController

  def create
    user = User.create(user_params)

    msg = UserMailer.welcome_email(user)
    msg.deliver_now

    render :root

  end

  def new
    render :new
  end


  def user_params
    params.require(:user).permit(:username, :password)
  end

end
