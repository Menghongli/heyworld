class CreateCommentLocations < ActiveRecord::Migration
  def change
    create_table :comment_locations do |t|
      t.integer :para_start_offset
      t.integer :para_end_offset
      t.integer :line_start_offset
      t.integer :line_end_offset
      t.integer :word_start_offset
      t.integer :word_end_offset
      t.integer :image_x_offset
      t.integer :image_y_offset

      t.timestamps
    end
  end
end
