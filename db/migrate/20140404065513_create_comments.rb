class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :parent_post_id
      t.integer :comment_location_id

      t.timestamps
    end
  end
end
