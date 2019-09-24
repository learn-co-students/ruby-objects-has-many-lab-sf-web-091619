class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @all
    end

    def songs
        @songs
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
        @@all << song
    end

    def self.song_count
        Song.all.count
    end


end