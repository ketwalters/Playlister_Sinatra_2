require "./app.rb"
require 'bundler'
Bundler.require

module Jukebox
	class Playlister < Sinatra::Application
		get '/artists/:artist' do |a|
			@artist_display == App.new.pull_artists_songs(a)
			erb :artists_page
		end

	end
end