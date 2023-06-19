class CreateHotSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :hot_spots do |t|
      t.string :address
      t.string :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
