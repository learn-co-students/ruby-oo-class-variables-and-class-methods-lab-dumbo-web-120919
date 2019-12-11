class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = Hash[@@genres.uniq.collect{ |genre| [genre, 0] }]
        @@genres.each do |genre|
            genre_hash[genre] += 1
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = Hash[@@artists.uniq.collect{ |artist| [artist, 0] }]
        @@artists.each do |artist|
            artist_hash[artist] += 1
        end
        artist_hash
    end
end