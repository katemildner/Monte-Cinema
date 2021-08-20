# frozen_string_literal: true

class Seat < ApplicationRecord
  validates :seat_name, presence: true
  validates :reserved, presence: true

  belongs_to :cinema_hall
  has_many :reservations, dependent: :destroy
end
