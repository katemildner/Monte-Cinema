# frozen_string_literal: true

class Seat < ApplicationRecord
  validates :seat_name, presence: true
  validates :reserved, presence: true
end
