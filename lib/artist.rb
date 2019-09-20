class Artist
    attr_accessor :name
    
    def initialize (name)
        @name = name
    end

    def songs
        Song.all.select {|info| info.artist == self }
    end

    def add_song(title)
        title.artist = self
    end

    def add_song_by_name (song_title)
        new = Song.new(song_title)
        new.artist = self
    end

    def self.song_count
        Song.all.count
    end
end