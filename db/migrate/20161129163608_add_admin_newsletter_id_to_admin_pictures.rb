class AddAdminNewsletterIdToAdminPictures < ActiveRecord::Migration
  def change
    add_column :admin_pictures, :admin_newsletter_id, :integer
  end
end
