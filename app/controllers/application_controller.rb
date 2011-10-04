class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def current_user
    @current_user ||= User.find(params[:user_id]) if params[:user_id]
  end
  helper_method :current_user
  
  def authenticated?
    redirect_to login_path and return false if current_user.nil?
  end
end
