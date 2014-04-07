class DropPostType < ActiveRecord::Migration
  def change
    drop_table :post_types
  end
end
