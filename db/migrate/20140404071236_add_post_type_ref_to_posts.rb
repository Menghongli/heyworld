class AddPostTypeRefToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :post_type, index: true
  end
end
