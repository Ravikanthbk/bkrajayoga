class CreateAdminMiniCarousels < ActiveRecord::Migration
  def change
    create_table :admin_mini_carousels do |t|
      t.string :title
      t.boolean :is_url
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
