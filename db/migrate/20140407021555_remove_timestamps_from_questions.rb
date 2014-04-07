class RemoveTimestampsFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :created_at, :string
    remove_column :questions, :updated_at, :string
  end
end
