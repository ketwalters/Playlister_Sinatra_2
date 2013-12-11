
class Artist

  attr_accessor :name, :songs, :genre

  ALL  = []

  def initialize
    @name = name
    @songs = []
    @genre = []
    ALL << self
  end

  def self.reset_artists
    ALL.clear
  end

  def self.count
    ALL.length
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    ALL.detect{|a| a.name == name}
  end

  def add_song(song)
    @songs << song
    @genre << song.genre
    song.artist = self
  end

  def genres
    @genre
  end

  def songs_count
    @songs.length
  end


  #def self.list #may be incorrect
  #  ALL.each_with_index do |o, index|
  #    puts "#{index+1}. #{o.name}"
  #  end
  #end

end