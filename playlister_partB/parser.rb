require "./lib/artist"
require "./lib/song"
require "./lib/genre"

class Parser
  attr_accessor :artists, :genres, :song
  attr_reader :mp3


  REGEX = /(?<artist>.*)\s\-\s(?<song>.*)\s\[(?<genre>.*)\]/


  def initialize(directory="data")
    @mp3 = Dir.entries(directory).select {|f| !File.directory? f}
  end

  def parse
    @mp3.map do |file|
      match = REGEX.match(file)

      artist = Artist.find_by_name(match[:artist]) || Artist.new.tap {|artist| artist.name = match[:artist]}

      song = Song.new
      song.name = match[:song]
      song.genre = Genre.find_by_name(match[:genre]) || Genre.new.tap {|genre| genre.name = match[:genre]}

      #debugger
      artist.add_song(song)
    end
  end

end



