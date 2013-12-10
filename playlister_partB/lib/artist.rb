
class Artist


  attr_accessor :name, :songs #sets up instance methods, so you can call name without initalizing 

  ARTISTS = Array.new

  def initialize
    @name = name  # 'An artist can have a name'
    @songs = Array.new  #"An artist has songs"
    ARTISTS << self
  end

  def self.all # 'The Artist class can keep track of artists as they are created' => Display
    ARTISTS
  end 

  def self.count  # Number of Artists created 
    ARTISTS.count #same thing as .length and .size
  end
        
  def self.reset_artists # 'The Artist class can reset the artists that have been created'
    ARTISTS.clear
  end

  def songs_count # 'An artist can count how many songs they have'
    songs.count
  end

  def add_song(song)  # 'a song can be added to an artist'
    songs << song #uses the accessor for songs 
    song.artist = self # value to song class artist varaible   .artists is from the song or genre  class  
  end 

  def genres # 'artists have genres'
    songs.map{|song| song.genre}.uniq #.uniq does not allow repeats.  he calls the songs.genre from the song class accessor 
    #artist is coming fron the song class 
  end

	
 #  attr_accessor :name, :songs, :genres
 #    ARTISTS = []

	# def initialize(name="N/A", songs=[])
 #    @name = name
 #    @songs = songs
 #    @genres = []
 #    ARTISTS << self
	# end
	
 #  def self.reset_artists
 #    ARTISTS.clear
 #  end

 #  def self.all
 #    ARTISTS
 #  end

 #  def self.count
 #    ARTISTS.count
 #  end

 #  def songs_count
 #    songs.count
 #  end

 #  def add_song(song)
 #    @songs << song
 #    @genres << song.genre
 #  end
  
end

