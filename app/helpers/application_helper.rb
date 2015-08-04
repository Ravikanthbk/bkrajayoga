module ApplicationHelper
  def menu_active(name = nil)
    case controller.controller_name
    when name
      "active"
    else
    end    
  end
end
