class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    
    @artist = artist
    @@artists << artist
    @@artist_count[artist] ||= 0
    @@artist_count[artist] += 1

    @genre = genre    
    @@genres << genre
    @@genre_count[genre] ||= 0
    @@genre_count[genre] += 1
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
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end
end