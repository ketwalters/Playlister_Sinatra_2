require './parser'
require './lib/artist'
require './lib/song'
require './lib/genre'

require "./parser"

class App
  attr_accessor :reply
  attr_reader :songs

  def initialize(reply)
    @songs
    @reply = reply
  end

  def greeting
     "Welcome to Playlister!" 
     "To listen to some awesome sounds type Nice! ; Type Quit to exit Playlister."
    reply = gets.chomp.downcase
  end

  def art_or_gen
     "To browse by Artist type A"
     "To browse by Genre type G"
    @reply = gets.chomp.downcase
    if @reply == "a" 
      browse_artist
    elsif @reply == "g"
      browse_genre
    else 
       "I only respond to:"
       "You typing A, to browse songs by artist"
       "You typing G, to browse songs by genre"
    end
  end

  def browse_artist
     "Which one of these great musicans do you want to listen to? Please select artist by number"
    Artist::ALL.each_with_index do |object_id, index|
       "#{index + 1}: #{object_id.name} - #{object_id.songs_count} song(s)"
    end
    select_artist
    end
  end


  def select_artist
     "Select an artist by number. For example: \n Type 1 for A$AP Rocky"
    reply = gets.chomp.to_i
    requested_artist = Artist::ALL[reply-1]
     "#{reply}: #{requested_artist.name} - #{requested_artist.songs_count} song(s)"
    requested_artist.songs.each_with_index do |song, song_index|
       "#{song_index + 1}: #{song.name} - #{song.genre.name} genre"
    
      end
  end

  def browse_genre
    Genre::ALL.each_with_index do |object_id, index|
       "#{index + 1}: #{object_id.name}"
    end
    select_genre
  end
  
  def select_genre
    puts "Select a genre by number. \n For example: Type 1 for Dance"
    reply = gets.chomp.to_i
    requested_genre = Genre::ALL[reply-1]
     "Genre #{Genre::ALL[reply-1].name.capitalize} has #{Genre::ALL[reply-1].songs.count} Song(s) by #{Genre::ALL[reply-1].artists.length} Artists"
     "#{Genre::ALL[reply-1].name.capitalize}"
     "To see the list of songs and artists in Genre #{Genre::ALL[reply-1].name.capitalize}, type Yes. To exit type No"
    response = gets.chomp.downcase
    if response == "yes"
      Genre::ALL[reply-1].songs.each_with_index do |song, index|
         "This genre has "
         "#{index + 1}. Song: #{song.name} - Artist: #{song.artist.name}"
      end
    end
  end

  def playlister
    greeting
    art_or_gen
  end



#Parser.new.parse
#a = App.new
#a.playlister