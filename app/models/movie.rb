class Movie < ApplicationRecord
  validates :title, presence: true
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :overview, presence: true

  validates :title, uniqueness: true
  validates :overview, uniqueness: true
end
