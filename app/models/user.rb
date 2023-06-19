class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :galleries
  has_many :photos, through: :galleries
  has_many :comments
  has_many :events
  has_many :bookings
  has_many :hot_spots
  belongs_to :community
  has_many :likes

  validates :username, presence: true, uniqueness: true

  has_one_attached :photo
  has_one_attached :banner_photo

  include PgSearch::Model
  multisearchable against: [:username],
  using: {
    prefix: true
  }
end
