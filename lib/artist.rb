
class Artist
  attr_accessor :name

  def initialize(name)
      @name = name
      @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def add_song_by_name(songs_name)
    song  = Song.new(songs_name)
    @songs << song
  end

end
