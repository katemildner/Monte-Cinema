class CreateCinemaHalls < ActiveRecord::Migration[6.1]
  def change
    create_table :cinema_halls do |t|
      t.string :name
      t.integer :number_of_rows
      t.integer :number_of_seats_per_row

      t.timestamps
    end
  end
end
