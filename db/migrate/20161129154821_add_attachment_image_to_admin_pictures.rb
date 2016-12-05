class AddAttachmentImageToAdminPictures < ActiveRecord::Migration
  def self.up
    change_table :admin_pictures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_pictures, :image
  end
end
