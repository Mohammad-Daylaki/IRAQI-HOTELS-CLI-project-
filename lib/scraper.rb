require "open-uri"
require "nokogiri"
require "pry"
class Scraper
  attr_accessor :title
  def initialize
  #  @hotels =Hotel.new(title,location,rate,details)
  #  @hotels.title = title
    @doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Hotels-g294000-Iraq-Hotels.html")
)
  end

  def scrape
    @hotels
  end

  def self.list_scrape
    
    binding.pry

  end
end
