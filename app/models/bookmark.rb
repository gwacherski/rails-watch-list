class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :list_id, presence: true
  validates :movie, presence: true

  belongs_to :movie
  belongs_to :list
end
