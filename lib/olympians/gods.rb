
class Olympians
  class Gods  
   attr_accessor :name, :roman_name, :symbols, :rules
    
    
    def self.gods_objects  
      gods = []
      gods << Olympians::Scraper.scrape_aphrodite
      gods << Olympians::Scraper.scrape_ares
      gods << Olympians::Scraper.scrape_artemis
      gods << Olympians::Scraper.scrape_hades
      gods << Olympians::Scraper.scrape_zeus
      gods
    end

  end
end