class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

  #why does current_user not go into private? but require_logged_in does?
  def current_user
    session[:name]
  end

  private

  def require_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end
