class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title,              null: false
      t.datetime :release_dates,    null: false
      t.string :age_rating,         null: false
      t.string :poster_url,         null: false
      t.integer :duration,          null: false

      t.timestamps
    end
  end
end
