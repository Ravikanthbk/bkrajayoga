class AddPriorityToAdminMiniCarousel < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_mini_carousels, :priority, :integer
  end
end
