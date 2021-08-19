class Seat < ApplicationRecord
  validates :seat_name, presence: true
  validates :reserved, presence: true
end
