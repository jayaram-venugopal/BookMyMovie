class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :name,            null: false
      t.integer :total_seates,   null: false
      t.timestamps
    end
  end
end
