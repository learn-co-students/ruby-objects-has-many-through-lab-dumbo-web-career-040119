class Genre
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def songs
      # We just want to select the songs that have a genre value that matches
      # the current instance of the Genre class.
      Song.all.select do |song|
        song.genre == self
      end
      # This can be written       Song.all { |song| song.genre == self }
    end
  
    def artists
      # Iterate over that genre's collection of songs, which is displayed
      # with the songs method defined above in Genre.
      songs.map do |song|
        # Collect(map) the artist value for each song.
        song.artist
      end
      # Can be written songs.map(&:artist)   ------> Collect artist value!
    end
  
  end