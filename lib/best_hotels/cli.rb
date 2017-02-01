#OUR CLI CONTROLER *
require_relative './hotels.rb'
class HotelsInIraq
  def call
    puts "
              ________________________________________________________________
              |                                                      ____    |
              |                                                     |    |   |
              |                                                     |    |   |
              |                   ____________                   ___|    |__ |
              |                   |          |                   |          ||
              |                   |      ____|______          ___|___       ||
              |     ______________|__    |         |_________|      |       ||
              |     |               |    |         |         |      |       ||
              |     |               |    |         |         |      |       ||
              |_____|_______________|____|_________|_________|______|_______||"
             puts ".                        <<   WELCOMETOTHEBESTHOTELSINIRAQ    >>                                        ."
  end

  def another_call
    scrape
    menu
    goodbye
  end

  def scrape
    hotel = Hotel.new_hotels
    #@hotel.each.with_index(1) do |hotel, i|
    #  puts "#{i}. #{hotel.title} - #{hotel.location} - #{hotel.rate}"
    #end
  #  hotel.title_scrape
  #  hotel.comments_scrape
  end
def menu
  input = nil
  while input != "exit"
    puts "Please, Inter the 'Hotel's number' which you recommend or type 'list' to show Hotel's list or 'exit' for Exit :"
    input =gets.strip

    if input.to_i > 0
      # hotel=Hotel.new
       #title_input= hotel.title_scrape[input.to_i]
       #puts title_input
       puts Scraper.new.title_scrape[input.to_i-1]
       puts "        located #{Scraper.new.location_scrape[input.to_i-1]}"
       puts "Best comments : "
       puts "#{Scraper.new.comments_scrape[input.to_i-1]}"
       puts "________________________________________________"
       puts "                        "
    elsif input == "list"
      scrape
    else
      puts "this Hotel's number is not available"
      puts "Please type a valid number or type 'list' to show Hotel's list or 'exit' for Exit :"
    end
  end
end
def goodbye
  puts "Thank YOu !!! See you soon ............"
end
end
HotelsInIraq.new.call
HotelsInIraq.new.another_call


#details
#details=@doc.css("ul.listing_reviews").collect do |e|
#   e.text
# end
