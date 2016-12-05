class AddActiveToAdminMiniCarousel < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_mini_carousels, :active, :boolean
  end
end
