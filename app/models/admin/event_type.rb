class Admin::EventType < ActiveRecord::Base
  has_many :admin_events, :class_name=>"Admin::Event"
end
