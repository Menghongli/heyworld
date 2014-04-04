class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.decimal :score, :precision => 5, :scale => 1
      t.integer :view_count
      t.datetime :publish_at

      t.timestamps
    end
  end
end
