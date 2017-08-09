class RegistrationsController < ApplicationController
  # A form to create a user account with name, email, username, and password
  #   User signup
  #   User information updates (edit)
  #   User deletion

  def new
    @user = User.new
    # load a form for a User object
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to issues_path 
    else
      render :new
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
