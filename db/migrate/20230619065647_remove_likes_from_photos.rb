class RemoveLikesFromPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :likes
  end
end
