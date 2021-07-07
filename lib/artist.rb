require 'pry'
class Artist
    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name,genre)
        #name is song name
        #genre is genre instance
        #binding.pry
        Song.new(name,self,genre)
        #binding.pry
    end

    def songs
        Song.all.select do |song|
            #binding.pry
            song.artist == self
        end
        #binding.pry
    end

    def genres
        Song.all.map do |song|
            #binding.pry
            song.genre
        end
    end

    def self.all
        @@all
    end
end