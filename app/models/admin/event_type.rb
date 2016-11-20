class Admin::EventType < ActiveRecord::Base
  #has_many :admin_events, :class_name=>"Admin::Event"
  has_many :admin_events, :class_name=>"Admin::Event", :dependent => :destroy, :foreign_key => :admin_event_type_id
 
  validates :name, presence: true
end
