class Admin::Event < ActiveRecord::Base
  belongs_to :admin_event_type
end
