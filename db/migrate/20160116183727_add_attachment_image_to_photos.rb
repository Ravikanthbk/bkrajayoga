class AddAttachmentImageToPhotos < ActiveRecord::Migration
  def self.up
    change_table :admin_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_photos, :image
  end
end
