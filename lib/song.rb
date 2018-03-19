class Song

attr_accessor :name, :artist, :genre
@@all = []
@@count = 0
@@artists = []

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

def artist
  @@artists
end

def genres
  @@genres
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


end
