class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
  helper_method :user_signed_in?, :current_user, :user_session

  # The Helper methods needed to help us in our controllers and our views
  #   is_logged_in?
  #   current_user
  #   authenticate_user! (if user isn't logged in, send them to a login screen)
  def index
    
  end

  # private

  # def current_user # check if a current_user has been defined
  #   # if not look for a user using the user_id key in the session
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end

  # def user_signed_in?
  #   !!current_user
  # end

  # def authenticate_user!
  #   redirect_to new_view_session_path unless user_signed_in?
  # end
  
  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
