require 'pry'

class Artist
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select do |x|
      x.artist == self
    end
  end
  
  def genres
    song_list = self.songs
    
    song_list.collect! do |x|
      x.genre
    end
  end
end