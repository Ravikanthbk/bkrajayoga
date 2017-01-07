class CreateAdminPictures < ActiveRecord::Migration
  def change
    create_table :admin_pictures do |t|
      t.string :title

      t.timestamps
    end
  end
end
