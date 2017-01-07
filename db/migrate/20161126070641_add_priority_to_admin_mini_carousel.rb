class AddPriorityToAdminMiniCarousel < ActiveRecord::Migration
  def change
    add_column :admin_mini_carousels, :priority, :integer
  end
end
