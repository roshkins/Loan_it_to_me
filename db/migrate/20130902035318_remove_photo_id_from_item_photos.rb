class RemovePhotoIdFromItemPhotos < ActiveRecord::Migration
  def up
    remove_column :item_photos, :photo_id
  end

  def down
    add_column :item_photos, :photo_id, :integer
  end
end
