class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :nickname
      t.string :email
      t.string :password

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
