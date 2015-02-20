class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protected
  def authenticate_user
    if session[:user_id]
      # set current user object to @current_user object variable
      @current_user = User.find(session[:user_id])
      return true
    else
      flash[:notice] = "You must log in to see that page"
      redirect_to(:controller => 'sessions', :action => 'new')
      return false
    end
  end
end
