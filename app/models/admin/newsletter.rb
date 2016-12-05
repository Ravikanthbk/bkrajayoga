class Admin::Newsletter < ApplicationRecord
  has_many :admin_pictures, :class_name=>"Admin::Picture", :dependent => :destroy, :foreign_key => :admin_newsletter_id

  validates :title, presence: true    
  #default_scope { order("priority ASC") }
end
