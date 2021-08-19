class CreateSeats < ActiveRecord::Migration[6.1]
  def change
    create_table :seats do |t|
      t.string :seat_name
      t.boolean :reserved

      t.timestamps
    end
  end
end
