class SessionsController < ApplicationController
  # A form to login a user with email and password
  #   User login
  #   User logout
  def new
    @user = User.new
    # load a form for a User object
    render :new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to issue_path
    else
      render :new
    end
  end
end
