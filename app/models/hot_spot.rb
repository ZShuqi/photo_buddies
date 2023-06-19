class HotSpot < ApplicationRecord
  belongs_to :user
  # need to validate address format
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
