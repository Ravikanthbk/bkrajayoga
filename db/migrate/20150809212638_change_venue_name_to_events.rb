class ChangeVenueNameToEvents < ActiveRecord::Migration
  def change
    add_reference :admin_events, :admin_venue, index: true, foreign_key: true    
  end
end
