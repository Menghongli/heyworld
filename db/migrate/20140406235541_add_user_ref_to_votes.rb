class AddUserRefToVotes < ActiveRecord::Migration
  def change
    add_reference :votes, :user, index: true
  end
end
