class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :sidebar_events

  def sidebar_events
    @event_types = Admin::EventType.all
  end

end
