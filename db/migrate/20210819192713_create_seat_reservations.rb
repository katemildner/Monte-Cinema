class CreateSeatReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :seat_reservations do |t|

      t.timestamps
    end
  end
end
