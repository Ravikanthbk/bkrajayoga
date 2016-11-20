class AddRegistrationToAdminEvents < ActiveRecord::Migration
  def change
    add_column :admin_events, :registration, :boolean
  end
end
