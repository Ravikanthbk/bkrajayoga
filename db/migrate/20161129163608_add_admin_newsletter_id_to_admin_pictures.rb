class AddAdminNewsletterIdToAdminPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_pictures, :admin_newsletter_id, :integer
  end
end
