
class Genre
  
  attr_accessor :name, :songs
  ALL = []

  def initialize
    @name = name
    @songs = []
    ALL << self
  end

  def artists
    (songs.collect{|song| song.artist}).uniq
  end

  def self.reset_genres
    ALL.clear
  end
  
  def self.all
    ALL
  end

  def self.find_by_name(name)
    ALL.detect{|g| g.name == name}
  end

  #def self.list #maybe an wrong
  # ALL.each_with_index do |o, index|
  #   puts "#{index+1}. #{o.name}"
  # end
  #end


end

