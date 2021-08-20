# frozen_string_literal: true

class CreateSeatReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :seat_reservations, &:timestamps
  end
end
