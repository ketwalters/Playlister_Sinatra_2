require "./app.rb"
require 'bundler'
Bundler.require
require './lib/artist'
require './lib/song'
require './lib/genre'
require './parser'

module Jukebox
	class Playlister < Sinatra::Application
		
    get '/artists/:artist' do |a|
			@artist_display == App.new.pull_artists_songs(a)
			erb :artists_page
		end

	end
end