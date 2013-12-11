
class Song
  
  attr_accessor :name,:artist

  ALL = []

  def initialize
    @name = name
    @genre = genre
    ALL << self
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

  def genre
    @genre
  end

end
