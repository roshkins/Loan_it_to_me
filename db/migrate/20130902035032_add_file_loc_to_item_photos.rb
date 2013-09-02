class AddFileLocToItemPhotos < ActiveRecord::Migration
  def change
    add_column :item_photos, :file_loc, :string
  end
end
