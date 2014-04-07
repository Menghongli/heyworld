class AddPostRefToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :parent_post_id, :integer
  end
end
