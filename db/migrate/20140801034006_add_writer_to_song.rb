class AddWriterToSong < ActiveRecord::Migration
  def change
    add_column :songs, :writer, :string
  end
end
