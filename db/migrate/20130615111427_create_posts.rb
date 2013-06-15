class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.string :name
      t.string :display_name
      t.string :url
      t.string :icon
      t.integer :score, default: 0
      t.timestamps
    end
  end
end
