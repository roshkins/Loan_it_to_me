class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_hash, null: false
      t.string :selfie
      t.string :session_token, null: false
      t.string :bio
      t.integer :home_id

      t.timestamps
    end
    add_index :users, :home_id
  end
end
