class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, :date, :description, :address, presence: true
end
