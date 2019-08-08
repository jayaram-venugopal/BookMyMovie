class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.references :movie, foreign_key: true
      t.references :theater, foreign_key: true
      t.boolean :morning, default: true
      t.boolean :matinee, default: true
      t.boolean :evening, default: true
      t.boolean :night, default: true

      t.timestamps
    end
  end
end
