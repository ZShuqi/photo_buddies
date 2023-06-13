class Photo < ApplicationRecord
  belongs_to :gallery
  has_many :comments, dependent: :destroy
  has_one_attached :photo

  # validates :likes
end
