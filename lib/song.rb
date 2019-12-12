class Song 
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre 
  
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
    return @@genres.uniq
  end
  
  def self.artists
    return @@artists.uniq 
  end 
  
  def self.genre_count
    genre_count_hash = {}
    @@genres.each do |genre|
      if !genre_count_hash[genre]
        genre_count_hash[genre] = 1 
      elsif !!genre_count_hash[genre]
        genre_count_hash[genre] += 1 
      end
    end
    genre_count_hash
  end 
  
  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |artist|
      if !artist_count_hash[artist]
        artist_count_hash[artist] = 1 
      elsif !!artist_count_hash[artist]
        artist_count_hash[artist] += 1 
      end
    end
    artist_count_hash
  end
  
end






