class Genre
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
#binding.pry
        Song.all.select do |song|
            #binding.pry
            song.genre == self
        end
    end 

    def artists
        #binding.pry
        #Genre.all.map do ||
        Song.all.map do |song|
            song.artist
        end
    end

    def self.all
        @@all
    end

end