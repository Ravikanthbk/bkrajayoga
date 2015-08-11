class AddVenueToEvents < ActiveRecord::Migration
  def change
    add_column :admin_events, :is_registrations, :boolean
    add_column :admin_events, :speaker, :string
    add_reference :admin_events, :venue, index: true, foreign_key: true  
  end
end
