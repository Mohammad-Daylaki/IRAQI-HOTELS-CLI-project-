#!/usr/bin/env ruby
#require "./lib/hotels_in_iraq"
#HotelsInIraq::CLI.new.call
#require_relative './Scraper.rb'
class Hotel < Scraper
  include
  attr_accessor :hotels, :title, :location, :rate, :details
  @@all_list =[]
  def self.new_hotels
    @title=title
    @location=location
    @rate=rate
    @details=details
    @@all_list << self
  end

  def self.all_list
    @@all_list
  end

  def  list_scrape
    hotel_name
    puts "____________________________________________________________________________"
  end
end
