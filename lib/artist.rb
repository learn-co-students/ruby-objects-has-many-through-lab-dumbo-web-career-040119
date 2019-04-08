class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name =name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    # Since the format of song is Song.new(name, artist, genre) and we want to
    # set artist = self, just replace artist with self! Name and genre will be
    # passed in as arguments.
    Song.new(name, self, genre)
  end

  def songs
    # We want to iterate through all the songs aka Song.all ---> @@all in Song.
    Song.all.select do |song|
      # Select the songs for which their artist value is equal to self, or the
      # current instance of Aritst we are calling this method on.
      song.artist == self
    end
    # This will return a shortened array with only the songs that belong to
    # the artist we are looking for.
  end

  def genres
    # Iterate over an artist's songs, not all songs, and return the genre(s)
    # of each song.
    songs.map do |song|
      song.genre
    end
    # Could also use &: like this:         songs.map(&:genre)
  end

end
