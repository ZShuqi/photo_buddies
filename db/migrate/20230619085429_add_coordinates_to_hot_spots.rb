class AddCoordinatesToHotSpots < ActiveRecord::Migration[7.0]
  def change
    add_column :hot_spots, :latitude, :float
    add_column :hot_spots, :longitude, :float
  end
end
