# frozen_string_literal: true

class RenameDateAndTimeToStartingDateAndTime < ActiveRecord::Migration[6.1]
  def change
    rename_column :screenings, :date_and_time, :starting_date_and_time
  end
end
