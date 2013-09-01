class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :home_id
      t.integer :category_id
      t.string :name
      t.text :description
      t.decimal :price, precision: 6, scale: 2
      t.decimal :avg_rating, precision: 3, scale: 2

      t.timestamps
    end
    add_index :items, :home_id
    add_index :items, :category_id
  end
end
