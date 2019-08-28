class Song
    # Put artist and genre in attr_accessor so Song can use their classes.
    attr_accessor :name, :artist, :genre
  
    @@all = []
  
    # Even though we are initializing each Song with an argument of name, artist
    # and genre, we will still get info for artist/genre from the Artist/Genre class.
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@all << self
    end
  
    def self.all
      @@all
    end
  
  end