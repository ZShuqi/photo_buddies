class Gallery < ApplicationRecord
  belongs_to :user
  has_many_attached :photos, dependent: :destroy

  validates :name, presence: true
end
