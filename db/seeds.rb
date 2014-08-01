GENRES=["Rock", "Pop", "Alternative", "Klezmer!", "Happy Hard Core", "R&B"]
30.times do
  Song.create name: "Song#{SecureRandom.hex(4)}", artist: "Artist #{SecureRandom.hex(4)}", bpm: SecureRandom.random_number(100), release_date: Time.now, genre: "#{GENRES.sample}", album: SecureRandom.hex(4), key: SecureRandom.hex(2)
end