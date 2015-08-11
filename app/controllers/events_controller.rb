class EventsController < ApplicationController
  def courses
    @courses = Admin::Event.where(admin_event_type_id: 1)
  end

  def local_activities
  end

  def lectures
  end
end
