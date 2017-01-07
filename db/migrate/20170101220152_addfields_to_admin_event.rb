class AddfieldsToAdminEvent < ActiveRecord::Migration
  def change
  	add_column :admin_events, :language, :string
  	add_column :admin_events, :color_code, :string
  end
end
