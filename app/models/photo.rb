class Photo < ApplicationRecord
  belongs_to :gallery
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_one_attached :photo

  include PgSearch::Model
  multisearchable against: [:keyword]

end
