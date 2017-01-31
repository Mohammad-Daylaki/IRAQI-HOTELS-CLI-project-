#!/usr/bin/env ruby
#require "./lib/hotels_in_iraq"
#HotelsInIraq::CLI.new.call

class Hotel
  attr_accessor :hotels, :title, :location, :rate, :details
  @@all_list =[]
  def initialize(title,location,rate,details)
    @title=title
    @location=location
    @rate=rate
    @details=details
    @@all_list << self
  end

  def self.all_list
    @@all_list
  end
  def hotel_list

  end
end
