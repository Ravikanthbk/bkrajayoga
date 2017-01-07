class AddActiveToAdminMiniCarousel < ActiveRecord::Migration
  def change
    add_column :admin_mini_carousels, :active, :boolean
  end
end
