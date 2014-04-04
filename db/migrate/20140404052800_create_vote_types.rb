class CreateVoteTypes < ActiveRecord::Migration
  def change
    create_table :vote_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
