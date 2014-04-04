class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :snippet
      t.string :thumbnail

      t.timestamps
    end
  end
end
