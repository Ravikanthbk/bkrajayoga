class UserRegistration < ActiveRecord::Base
  belongs_to :admin_event, :class_name=>"Admin::Event", :foreign_key => "admin_event_id"

  validates :name, presence: true
#  validates :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :tel_mobile_no, presence: true

end
