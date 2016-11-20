class CreateMailingUsers < ActiveRecord::Migration
  def change
    create_table :mailing_users do |t|
      t.string :name
      t.string :email
      t.string :phone_no

      t.timestamps null: false
    end
  end
end
