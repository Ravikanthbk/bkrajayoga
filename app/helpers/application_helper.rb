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

end
