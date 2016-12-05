class AddAttachmentImageToAdminMiniCarousels < ActiveRecord::Migration
  def self.up
    change_table :admin_mini_carousels do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_mini_carousels, :image
  end
end
