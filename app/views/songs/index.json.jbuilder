json.array!(@songs) do |song|
  json.extract! song, :id, :name, :artist, :genre, :release_date, :bpm, :album, :key
  json.url song_url(song, format: :json)
end
