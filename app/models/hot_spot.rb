class HotSpot < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :comment, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
