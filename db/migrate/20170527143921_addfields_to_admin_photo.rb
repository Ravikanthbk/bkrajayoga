class AddfieldsToAdminPhoto < ActiveRecord::Migration[5.0]
  def change
  	add_column :admin_photos, :is_url, :boolean
  	add_column :admin_photos, :url, :string
  	add_column :admin_photos, :priority, :integer  	
  	add_column :admin_photos, :active, :boolean
  end
end
