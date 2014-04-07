class AddVoteTypeRefToVotes < ActiveRecord::Migration
  def change
    add_reference :votes, :vote_type, index: true
  end
end
