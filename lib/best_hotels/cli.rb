#OUR CLI CONTROLER *
require_relative '../scraper.rb'
class HotelsInIraq < Scraper
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
  Scraper.list_scrape
end
HotelsInIraq.new.call
