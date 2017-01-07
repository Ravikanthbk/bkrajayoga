class CreateAdminNewsletters < ActiveRecord::Migration
  def change
    create_table :admin_newsletters do |t|
      t.string :title
      t.integer :priority

      t.timestamps
    end
  end
end
