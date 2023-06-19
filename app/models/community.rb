class Community < ApplicationRecord
  has_many :users
  has_many :hot_spots, through: :users
end
