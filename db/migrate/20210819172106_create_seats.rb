# frozen_string_literal: true

class CreateSeats < ActiveRecord::Migration[6.1]
  def change
    create_table :seats do |t|
      t.string :seat_name, null: false
      t.boolean :reserved, null: false
      t.references :cinema_hall, null: false, foreign_key: true

      t.timestamps
    end
  end
end
