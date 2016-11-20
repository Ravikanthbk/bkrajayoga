module Admin::EventsHelper
  def total_participants(admin_event)
    total_registrations =  UserRegistration.where(admin_event_id: admin_event.id).count
    #link_to total_registrations, user_registrations_path
  end
end
