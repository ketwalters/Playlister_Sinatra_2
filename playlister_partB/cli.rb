require "./app.rb"
require 'bundler'
Bundler.require
require './lib/artist'
require './lib/song'
require './lib/genre'
require './parser'

module Jukebox
	class Playlister < Sinatra::Application
		
    get '/artists' do |a|
			@artist_display = App.new(a)
			erb :playlister
		end

	end
end