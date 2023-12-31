class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :images

  validates :title, :date, :description, :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
