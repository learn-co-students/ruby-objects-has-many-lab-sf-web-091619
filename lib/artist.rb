require 'pry'

class Artist
    attr_accessor :name, :song, :songs
 

   def initialize(name)
      @name = name
      @songs = [] 
    end
  
    def songs(song)
      @songs
    end


   # binding.pry
    def add_song(song)
        song.artist = self
        @songs << song #pushing song into songs. b/c we have to add!

    end
end

