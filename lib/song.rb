require 'pry'
class Song
    @@count = 0
    @@all = []
    @@artists = []
    @@genres = [] 
  
    attr_accessor :name, :artist, :genre 

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@all << self
        @@artists << artist 
        @@genres << genre
        # binding.pry
    end

    def self.count 
        @@count
    end

    def self.all
         @@all
     end

     def self.artists
        @@artists.uniq
     end

     def self.genres
        @@genres.uniq
     end

     def self.genre_count
        @@genres.group_by{|genre| genre}.map{|key, value| [key, value.size]}.to_h
     end

     def self.artist_count
        @@artists.group_by{|artist| artist}.map{|key, value| [key, value.size]}.to_h
     end
     # binding.pry
 end

