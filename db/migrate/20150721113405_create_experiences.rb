class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.text :content
      t.boolean :published
      t.datetime :published_at

      t.timestamps null: false
    end
  end
end
