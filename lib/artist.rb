class Artist
    attr_reader :name
    attr_accessor :songs
    @@all_artists = []
    def initialize(name)
        @name = name
        @@all_artists << self
        @songs = []
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
    end
    def self.all
        @@all_artists
    end
    # def self.all_songs=(song)
    #     @@all_songs.push(song)
    # end
        
    def self.song_count
        Song.all.length
    end

end