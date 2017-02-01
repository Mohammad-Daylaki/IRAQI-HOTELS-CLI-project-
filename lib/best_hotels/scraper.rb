require "open-uri"
require "nokogiri"
require "pry"
class Scraper
  attr_accessor :titles
  def initialize
  #  @hotels.title = title
    @doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Hotels-g294000-Iraq-Hotels.html")
)
  end


  def list_scrape
      counter =1
     hotel_name=@doc.css("div.listing_title").collect do |hotel_name|
        puts "#{counter}. #{hotel_name.text}"
        counter +=1
   end
 end

 def title_scrape
   counter =1
   arr =[]
   @doc.css("div.listing_title").collect do |hotel_name|
     arr << "#{counter}. #{hotel_name.text}"
     counter +=1
   end
   arr #["1.erbil rotana","2.dasfsdf","3.sefsdfsd"]
 end

 def location_scrape
   @doc.css("div.slim_ranking").collect do |loc|
     loc.text[15..-1]
   end
 end

 def comments_scrape
   new_arr =[]
     @doc.css("ul.listing_reviews").collect do |comment|
      new_arr << comment.text
    end
    new_arr
 end

end
