class Admin::Event < ActiveRecord::Base
  belongs_to :admin_event_type, :class_name=>"Admin::EventType" #, :foreign_key => "admin_event_type_id"
  belongs_to :admin_venue, :class_name=>"Admin::Venue"
  #has_many :user_registrations, :dependent => :destroy  #, :class_name=>"UserRegistration"
  has_many :user_registrations, :class_name=>"UserRegistration", :dependent => :destroy, :foreign_key => "admin_event_id"
  #has_many :user_registrations, :dependent => :destroy
  #add_foreign_key :user_registrations, :admin_events, on_delete: :cascade
  #accepts_nested_attributes_for :admin_event_type, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  validates :name, presence: true
  validates :admin_event_type, presence: true
  validates :date_from, presence: true
  validates :date_to, presence: true
  validates :admin_venue, presence: true
end
