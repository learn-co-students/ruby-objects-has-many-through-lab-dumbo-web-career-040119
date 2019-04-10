require 'pry'
require_relative 'artist'
require_relative 'genre'

class Song
  @@all = []
  attr_accessor :name, :artist, :genre

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
