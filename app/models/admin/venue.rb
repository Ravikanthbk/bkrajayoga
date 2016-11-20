class Admin::Venue < ActiveRecord::Base
  has_many :admin_events, :class_name=>"Admin::Event"
  
  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :city_locality, presence: true
  validates :postcode, presence: true
  validates :country, presence: true
end
