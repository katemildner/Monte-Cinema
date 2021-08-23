# frozen_string_literal: true

class CreateSeatReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :seat_reservations do |t|
      t.references :reservation, null: false, foreign_key: true
      t.references :seat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
