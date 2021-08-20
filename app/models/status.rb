# frozen_string_literal: true

class Status < ApplicationRecord
  validates :status_name, presence: true

  belongs_to :reservation
end
