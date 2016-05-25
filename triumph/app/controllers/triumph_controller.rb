class TriumphController < ApplicationController
  

  def bios
  end

  def clips
  end

  def index
    HTTParty::Basement.default_options.update(verify: false)
    @response1 = HTTParty.get("https://api.twitch.tv/kraken/streams/doctordesutter").body
    @response2 = HTTParty.get("https://api.twitch.tv/kraken/streams/vohlumes").body
    @response3 = HTTParty.get("https://api.twitch.tv/kraken/streams/adub_rl").body
    @channel = HTTParty.get("https://api.twitch.tv/kraken/channels/adub_rl").body
    @channel2 = HTTParty.get("https://api.twitch.tv/kraken/channels/doctordesutter").body
    @channel3 = HTTParty.get("https://api.twitch.tv/kraken/channels/vohlumes").body
    url = JSON.parse(@channel)
    url2 = JSON.parse(@channel2)
    url3 = JSON.parse(@channel3)
    @path = url["logo"]
    @path2 = url2["logo"]
    @path3 = url3["logo"]
    @result1 = JSON.parse(@response1)
    @result2 = JSON.parse(@response2)
    @result3 = JSON.parse(@response3)
  end

  def social
  end

  def client

  	end
  def getJson

  end
end
