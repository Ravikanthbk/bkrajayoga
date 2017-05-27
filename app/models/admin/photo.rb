class Admin::Photo < ActiveRecord::Base
  has_attached_file :image, 
    path: ":rails_root/public/system/:attachment/:id/:style/:filename",
    url: "/system/:attachment/:id/:style/:filename", 
    styles: { small: "64x64", med: "200x200", large: "1280x500" }
    #styles: { small: "64x64", med: "200x200", large: "750x380" }
    #default_url: "/images/:style/missing.png"
  validates :title, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment :image, :presence => true,
    :content_type => { :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"] }
  validates_attachment :image, :size => { :in => 0..2000.kilobytes }

  default_scope { order("priority ASC") }
end
