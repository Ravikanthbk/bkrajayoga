class CreateAdminEvents < ActiveRecord::Migration
  def change
    create_table :admin_events do |t|
      t.datetime :date_from
      t.datetime :date_to
      t.text :descript
      t.string :filename
      t.boolean :ticker
      t.references :admin_event_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
