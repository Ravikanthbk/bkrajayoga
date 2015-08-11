class AddNameToEvents < ActiveRecord::Migration
  def change
    add_column :admin_events, :name, :string
  end
end
