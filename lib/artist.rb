
class Artist
  attr_accessor :name, :songs
      @name = name
      @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(songs_name)
    song  = Song.new(songs_name)
    song.artist = self
    @songs << song
  end

  def song_count
    songs.size
  end

  def self.song_count
    total = 0
    @@artists.each{|artist| total += artist.song_count }
    total
  end

end
