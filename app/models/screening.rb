# frozen_string_literal: true

class Screening < ApplicationRecord
  validates :date_and_time, presence: true
end
