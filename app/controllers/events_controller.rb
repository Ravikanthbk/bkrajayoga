class EventsController < ApplicationController

  def events_calendar
    
  end

  def all
    @all = Admin::Event.all
  end

  def courses
    event_type = Admin::EventType.where(name: 'Course')
    @courses = Admin::Event.where(admin_event_type_id: event_type)
  end

  def local_activities
  end

  def lectures
    event_type = Admin::EventType.where(name: 'Lectures')
    @lectures = Admin::Event.where(admin_event_type_id: event_type)
  end

  def workshops
    event_type = Admin::EventType.where(name: 'Workshop')
    @workshops = Admin::Event.where(admin_event_type_id: event_type)
  end

  def seminars
    event_type = Admin::EventType.where(name: 'Seminars')
    @seminars = Admin::Event.where(admin_event_type_id: event_type)
  end

end
