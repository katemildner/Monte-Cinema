class Movie < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :director, presence: true
  validates :genre, presence: true
  validates :duration, presence: true
end
