class Photo < ApplicationRecord
  belongs_to :gallery
  has_many :comments, dependent: :destroy

  # validates :likes
end
