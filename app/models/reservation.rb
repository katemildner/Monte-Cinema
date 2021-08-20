# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :screening
  has_many :seat_reservations
  has_one :status
end
