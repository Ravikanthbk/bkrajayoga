class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :email
      t.text :body
      t.integer :source_id
      t.string :source_type
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
