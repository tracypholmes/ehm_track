class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_methods :current_user, :is_logged_in?, :authenticate_user!
  
  # The Helper methods needed to help us in our controllers and our views
  #   is_logged_in?
  #   current_user
  #   authenticate_user! (if a user isn't logged in, send them to a login screen)
  
  def index; end
  
  private
  
  def current_user # check if a current_user has been defined, if not look for a user using the user_id key in the session
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  
end
