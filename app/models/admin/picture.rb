class Admin::Picture < ApplicationRecord
  belongs_to :admin_newsletter, :class_name=>"Admin::Newsletter"
  has_attached_file :image, 
    path: ":rails_root/public/newsletter/:attachment/:id/:style/:filename",
    url: "/newsletter/:attachment/:id/:style/:filename", 
    styles: { small: "64x64", med: "200x200", large: "600x800" }
    #default_url: "/images/:style/missing.png"

  #validates :title, presence: true  
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  #validates_attachment :image, :presence => true,
  #  :content_type => { :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"] }
  #validates_attachment :image, :size => { :in => 0..2000.kilobytes }  
  
  do_not_validate_attachment_file_type :image
end
