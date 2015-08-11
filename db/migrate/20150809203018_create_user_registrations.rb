class CreateUserRegistrations < ActiveRecord::Migration
  def change
    create_table :user_registrations do |t|
      t.references :admin_event, index: true, foreign_key: true
      t.string :name
      t.text :address
      t.integer :postcode
      t.string :tel_mobile_no
      t.string :tel_residence
      t.string :email
      t.string :marital_status
      t.string :occupation
      t.string :gender
      t.integer :age
      t.string :race
      t.string :nationality
      t.string :introduced_thru
      t.boolean :meditate_before
      t.string :purpose_of_attending
      t.integer :no_of_places_or_people
      t.boolean :is_confirmed
      t.text :comments

      t.timestamps null: false
    end
  end
end
