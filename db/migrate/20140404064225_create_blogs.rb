class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :snippet
      t.string :thumbnail
    end
  end
end
