class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  # has_and_belongs_to_many :movies

  validates :comment, length: { minimum: 6 }
  validates :movie_id, :list_id, :comment, presence: true
  validates :movie, uniqueness: { scope: :list }
end
