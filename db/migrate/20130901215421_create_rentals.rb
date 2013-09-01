class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :item_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.integer :user_id

      t.timestamps
    end
    add_index :rentals, :item_id
    add_index :rentals, :user_id
  end
end
