#!/usr/bin/env ruby
#require "./lib/hotels_in_iraq"
#HotelsInIraq::CLI.new.call
#require_relative './Scraper.rb'
class Hotel < Scraper


  attr_accessor :hotels, :title, :location, :rate, :details
  def self.new_hotels
    hotel =Hotel.new
  #  binding.pry
  #  @title=title
  #  @location=location
  #  @rate=rate
  #  @details=details
  hotel.list_scrape
  #binding.pry
  end
end
