class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :director
      t.string :genre
      t.time :duration

      t.timestamps
    end
  end
end
