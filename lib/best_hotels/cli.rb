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
   scrape
   menu
   goodbye
  end

  def scrape
    @hotel =Hotels.new_hotels
  #  hotel.title_scrape
  #  hotel.comments_scrape
  end
def menu
  input = nil
  while input != "exit"
    puts "Please, Inter the 'Hotel's number' which you recommend or type 'list' to show Hotel's list or 'exit' for Exit :"
    input =gets.strip.downcase
    
    if input.to_i > 0
      puts @hotels[input.to_i-1]
    elsif input == "list"
      scrape
    else
      puts "this Hotel is not available"
    end
  end
end
def goodbye
  puts "Thank YOu !!! See you soon ............"
end
end
HotelsInIraq.new.call



#details
#details=@doc.css("ul.listing_reviews").collect do |e|
#   e.text
# end
