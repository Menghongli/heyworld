class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :accepted_answer_id

      t.timestamps
    end
  end
end
