class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # The Helper methods needed to help us in our controllers and our views
  #   is_logged_in?
  #   current_user
  #   authenticate_user! (if a user isn't logged in, send them to a login screen)
end
