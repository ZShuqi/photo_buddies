class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :photo

  validate :content, presence: true
end
