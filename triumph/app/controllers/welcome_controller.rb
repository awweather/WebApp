class WelcomeController < ApplicationController
	require 'json'
	require 'open-uri'
	def index
	end

	def twitch
		
		@hash = json.load(open("https://api.twitch.tv/kraken/streams/doctordesutter"))
	end
end
