# frozen_string_literal: true

class CreateScreenings < ActiveRecord::Migration[6.1]
  def change
    create_table :screenings do |t|
      t.datetime :date_and_time, null: false

      t.timestamps
    end
  end
end
