require 'pry'

class Genre
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    big_list = Song.all
    
    big_list.select do |x|
      x.genre == self
    end
  end
  
  def artists
    bog_list = self.songs
    
    bog_list.collect! do |x|
      x.artist
    end
  end
  
end