# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :screening
  has_many :seat_reservations, dependent: :destroy
  belongs_to :status
  belongs_to :user
end
