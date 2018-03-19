class Song

attr_accessor :name, :artist, :genre
@@all = []
@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@all << self
  @@count += 1
  @@artists << artist
  @@genres << genre
end

def self.artist
  @@artists
end

def self.all
  @@all
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
  genre_count = {}
  @@genres.each do |genre|
    if genre_count[genre]
      genre_count[genre] += 1
    else
      genre_count[genre] = 1
   end
  end
  genre_count
end

def artist_count
  artist_count = 0 
  @@artists.each do |artist|
    binding.pry
    artist[artist]
    binding.pry
  end 

end
