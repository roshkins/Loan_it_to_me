class CreateRentalReviews < ActiveRecord::Migration
  def change
    create_table :rental_reviews do |t|
      t.integer :author_id
      t.text :body
      t.decimal :rating, precision: 3, scale: 2
      t.integer :rental_id
      t.string :title

      t.timestamps
    end
    add_index :rental_reviews, :author_id
    add_index :rental_reviews, :rental_id
  end
end
