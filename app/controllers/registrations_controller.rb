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
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      # per SG, we use sessions becuz cookies live in the browser
    end
  end
end
