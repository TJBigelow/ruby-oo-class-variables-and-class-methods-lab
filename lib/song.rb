class Song
    attr_accessor :name, :artist, :genre
    @@count  = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.each_with_object({}){|genre, hash| hash[genre] ||= 0; hash[genre] += 1}
    end

    def self.artist_count
        @@artists.each_with_object({}){|artist, hash| hash[artist] ||= 0; hash[artist] += 1}
    end
end