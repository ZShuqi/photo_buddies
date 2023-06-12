class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :address
      t.string :keyword
      t.integer :likes
      t.references :gallery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
