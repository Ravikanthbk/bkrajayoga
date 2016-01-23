class CreateAdminPhotos < ActiveRecord::Migration
  def change
    create_table :admin_photos do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
