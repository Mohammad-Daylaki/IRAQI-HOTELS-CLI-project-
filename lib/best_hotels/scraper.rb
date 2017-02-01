require "open-uri"
require "nokogiri"
require "pry"
class Scraper
  attr_accessor :titles
  def initialize
  #  @hotels =Hotel.new(title,location,rate,details)
  #  @hotels.title = title
    @doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Hotels-g294000-Iraq-Hotels.html")
)
  end

  def scrape
    @hotels
  end

  def list_scrape
      counter =1
     @doc.css("div.listing_title").each do |hotel_name|
        puts "#{counter}. #{hotel_name.text}"
        counter +=1
   end
 end

 def title_scrape
   counter =1
   title=@doc.css("div.listing_title").collect do |hotel_name|
     "#{counter}. #{hotel_name.text}"
     counter +=1
   end
   title
 end

 def comments_scrape
   comments=@doc.css("ul.listing_reviews").collect do |comment|
      puts comment.text
    end
    comments

 end

 def location_scrape
   location =@doc.css("div.slim_ranking").collect do |loc|
     loc.text[15..-1]
   end
   location
 end
def rate_scrape
      title_location=title_scrape.each do |tit|
        puts "#{tit} (one of the #{location[loc_index]})"
        puts doc.css("div.rating span.ui_bubble_rating")[loc_index].attributes.values[2].value
        loc_index +=1
      end
end

end
