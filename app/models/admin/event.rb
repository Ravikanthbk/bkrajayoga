class Admin::Event < ActiveRecord::Base
  belongs_to :admin_event_type, :class_name=>"Admin::EventType"
  belongs_to :admin_venue, :class_name=>"Admin::Venue"
  has_many :user_registrations, :class_name=>"UserRegistration"
  #accepts_nested_attributes_for :admin_event_type, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
