class Song

    @@artists = []
    @@genres = []
    @@count = 0
        attr_accessor :name, :artist, :genre
    def initialize (name, artist, genre)
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
        total = {}
        @@genres.each do |n|
            if total[n]
                total[n] += 1
            else
                total[n] = 1

            end
        end
        total
    end

    def self.artist_count
        total = {}
        @@artists.each do |n|
            if total[n]
                total[n] += 1
            else
                total[n] = 1

            end
        end
        total
    end
end
