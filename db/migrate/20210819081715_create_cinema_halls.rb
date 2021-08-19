class CreateCinemaHalls < ActiveRecord::Migration[6.1]
  def change
    create_table :cinema_halls do |t|
      t.string :name, null: false
      t.integer :number_of_rows, null: false
      t.integer :number_of_seats_per_row, null: false

      t.timestamps
    end
  end
end
