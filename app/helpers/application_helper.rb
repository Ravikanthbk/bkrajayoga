module ApplicationHelper
  def menu_active(ctrl = nil, action = nil)
    case controller.controller_name
    when ctrl
      if controller.controller_name.eql?("about_us") && controller.action_name.eql?(action)
        "active"   
      elsif !controller.controller_name.eql?("about_us")      
        "active"
      end
    else
    end    
  end

  def is_published(object)
    object ? "Yes" : "No"
  end

  def event_type_name(name)
    case name
    when "Course"
      "courses"
    when "Lectures"
      "lectures"
    when "Workshop"
      "workshops"
    when "Seminars"
      "seminars"
    else
    end
  end

  def no_sidebar?
    (['events', 'user_registrations', 'contact_us', 'newsletters'].include?(controller.controller_name) && 
    ['events_calendar', 'new', 'local', 'show'].include?(controller.action_name))
  end
  
  def events_list_limit(event_type)
    events = Admin::Event.where("admin_event_type_id = ? AND date_to >= ?", 
      event_type, Time.zone.now.beginning_of_day).order(date_from: :desc)
    events_limit = events.first(2)              
    [events, events_limit]
  end  
  
  # Display Newletter first and last images class name
  def picture_class(pictures_list, pictures)
    pictures_list.first.id.eql?(pictures.id) ? "first" : pictures_list.last.id.eql?(pictures.id) ? "last" : nil
  end
    
end
