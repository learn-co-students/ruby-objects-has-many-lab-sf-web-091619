require 'pry'
class Artist
    attr_reader :name
    attr_accessor :song
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
       Song.all.select do |song|
            song.artist == self
       end
    end

    def add_song(song)
       song.artist = self
    end

    def add_song_by_name(song_title)
        new_song = Song.new(song_title)
        add_song(new_song)
    end

    def self.song_count
        Song.all.count
    end

end