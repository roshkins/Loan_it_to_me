class CreateItemPhotos < ActiveRecord::Migration
  def change
    create_table :item_photos do |t|
      t.integer :item_id
      t.integer :photo_id

      t.timestamps
    end
    add_index :item_photos, :item_id
    add_index :item_photos, :photo_id
  end
end
