class Genre
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    my_songs = Song.all.select do |song|
      song.genre == self
    end
# Song.all.select { |song| song.genre == self}.map { |song| song.artist} #&:artist
    my_songs.map do |song|
      song.artist
    end
  end
end
