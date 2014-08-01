class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :genre
      t.datetime :release_date
      t.integer :bpm
      t.string :album
      t.string :key

      t.timestamps
    end
  end
end
