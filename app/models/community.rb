class Community < ApplicationRecord
  has_many :users
  has_many :hot_spots, through: :users

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
