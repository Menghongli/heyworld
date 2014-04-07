class DropPost < ActiveRecord::Migration
  def change
    drop_table :posts
  end
end
