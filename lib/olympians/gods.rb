
class Olympians
  class Gods  
   attr_accessor :name, :roman_name, :symbols, :rules, :url
    
    
    def self.gods_objects  
      Olympians::Scraper.scrape_all_names
    end

  end
end