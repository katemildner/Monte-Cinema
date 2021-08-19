class CinemaHall < ApplicationRecord
  validates :name, presence: true
  validates :number_of_rows, presence: true, numericality: { only_integer: true }
  validates :number_of_seats_per_row, presence: true, numericality: { only_integer: true }
end
