class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :sidebar_events, :photo_carousel

  def photo_carousel
    @photos = Admin::Photo.order('created_at').limit(3)
  end

  def sidebar_events
    @event_types = Admin::EventType.all
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

end
