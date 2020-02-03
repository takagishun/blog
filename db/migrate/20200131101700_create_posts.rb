class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url, null: false
      t.string :image
      t.text :excerpt
      t.text :body

      t.timestamps
    end
    add_index :posts, :url, unique: true
  end
end
