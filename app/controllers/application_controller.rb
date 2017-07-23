class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  include ApplicationHelper
  
  def require_login
  	unless logged_in?
  		flash[:alert] = "You most logged in to access this section"
  		redirect_to login_path
  	end	
  end
end
