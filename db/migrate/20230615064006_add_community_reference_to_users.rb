class AddCommunityReferenceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :community, foreign_key: true
  end
end
