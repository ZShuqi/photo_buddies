class ChangeLikesDefaultOfPhotos < ActiveRecord::Migration[7.0]
  def change
    change_column_default :photos, :likes, 0
  end
end
