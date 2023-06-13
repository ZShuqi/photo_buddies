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
  validates :username, presence: true, uniqueness: true

  include PgSearch::Model
  multisearchable against: [:email],
  using: {
    prefix: true
  }
end
