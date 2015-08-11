class CreateAdminVenues < ActiveRecord::Migration
  def change
    create_table :admin_venues do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :fax
      t.string :email
      t.string :city_locality
      t.integer :postcode
      t.string :country
      t.text :remarks

      t.timestamps null: false
    end
  end
end
