class Artist

    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select{|i| i.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def self.all
        @@all
    end

    def self.find_or_create_by_name(name)
        if artist = self.all.find{|i| i.name == name}
            artist
        else
            artist = self.new(name)
        end
    end
    
    def print_songs
        songs.each{|i| puts i.name}
    end
end