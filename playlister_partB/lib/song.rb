
class Song
  
  attr_accessor :songs, :name , :artist
  #attr_reader :genre

  def genre=(genre)  #using the attribute accessor 
    @genre = genre # 'A genre has a name' 
    genre.songs << self # 'A genre has many songs' # song object.genre = genre obj
    #@genre =genre_obj
    #genre_obj .songs (array o songs) = []
    # talking to array from accessor at artist class songs
  end


	# def initialize(songs=[], genre=[])
 #    @songs = songs
 #    @genre = genre
 #    @name = name

	# end

 #  def genre
 #    @genre
 #  end

 #  def genre=(genre2)
 #    @genre = genre2
 #    @genre.songs << self
 #    @genre
 #  end


end

