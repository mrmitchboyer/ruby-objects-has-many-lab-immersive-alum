class Artist
  attr_accessor :name
  attr_reader :songs

  @@songs = []

  def self.song_count
    @@song_count = @@songs.count
  end

  def initialize(name)
    self.name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@songs << song
  end

end
