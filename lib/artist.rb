class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end

puts "hola"

# rap = Genre.new("rap")
# jay_z = Artist.new("jay z")
# problems = Song.new(jay_z, rap)
