class EventsController < ApplicationController

  def events_calendar
    @events = Admin::Event.where("date_to >= ? ", (Time.zone.now).beginning_of_month)    
  end

  def all
    @all = Admin::Event.where("date_to >= ?", Time.zone.now.beginning_of_day).order(date_from: :asc)
    @all = display_list_from_above_current_date(@all)
  end

  def courses
    event_type = Admin::EventType.find_by(name: 'Course')
    @courses = Admin::Event.where("admin_event_type_id = ? AND date_to >= ?", event_type.id, Time.zone.now.beginning_of_day).order(date_from: :asc)
    @courses = display_list_from_above_current_date(@courses)
  end

  def local_activitieis
  end

  def talks_workshops
    event_types = Admin::EventType.where("name in (?)", ['Talk','Workshop'])
    @talks_workshops = Admin::Event.where("admin_event_type_id in (?) AND date_to >= ?", event_types.collect(&:id), Time.zone.now.beginning_of_day).order(date_from: :asc)
    @talks_workshops = display_list_from_above_current_date(@talks_workshops)
  end

  def events_calendar_event
    @event = Admin::Event.find(params["event_id"])
  end

  private
  def display_list_from_above_current_date(events)
    list_above_current_date = []
    list_below_current_date = []
    events.each do |event|
      if event.date_from < Time.zone.now.beginning_of_day
        list_below_current_date << event
      else
        list_above_current_date << event 
      end
    end
    list_above_current_date + list_below_current_date 
  end
end
