# frozen_string_literal: true

class Screening < ApplicationRecord
  validates :starting_date_and_time, presence: true

  belongs_to :cinema_hall
  belongs_to :movie
  has_many :reservations, dependent: :destroy
end
