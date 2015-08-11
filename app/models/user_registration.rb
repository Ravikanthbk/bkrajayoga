class UserRegistration < ActiveRecord::Base
  belongs_to :admin_event, :class_name=>"Admin::Event"
end
