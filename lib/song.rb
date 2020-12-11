
class Song
    @@count = 0 
    @@artists = []
    @@genres = []
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
        @@genres.uniq  #should remove all the repetative elemens and return it 
    end 

    def self.artists 
        @@artists.uniq
    end 

    def self.genre_count
        genre_count = {}
        @@genres.each do |type|
            if genre_count.has_key?(type)
                genre_count[type] += 1 
            else 
                genre_count[type] = 1 
            end 
        end
        genre_count
    end 

    def self.artist_count
        artist_count = {}
        @@artists.each do |type|
            if artist_count.has_key?(type)
                artist_count[type] += 1 
            else 
                artist_count[type] = 1 
            end 
        end
        artist_count
    end

end 
