class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmark

  validates :title, :overview, presence: true, uniqueness: true
end
