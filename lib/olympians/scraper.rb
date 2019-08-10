# parent, want to use super for self.gods_objects

class Olympians
  class Scraper
    
    def self.gods_objects  
      
      aphro_doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/goddesses/aphrodite/"))
      
      god_1 = Gods.new 
      god_1.name = aphro_doc.search("h1.entry-title").text.strip
      god_1.symbols = aphro_doc.search("tr.row-6 td.column-2").text.strip
      god_1.rules = aphro_doc.search("tr.row-3 td.column-2").text.strip
      god_1.url = "https://greekgodsandgoddesses.net/goddesses/aphrodite/"
    
      ares_doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/gods/ares/"))
      
      god_2 = Gods.new 
      god_2.name = ares_doc.search("h1.entry-title").text.strip
      god_2.symbols = ares_doc.search("tr.row-6 td.column-2").text.strip
      god_2.rules = ares_doc.search("tr.row-3 td.column-2").text.strip
      god_2.url = "https://greekgodsandgoddesses.net/gods/ares/"   
      
      god_3 = self.new 
      god_3.name = "Athena"
      god_3.symbols = "symbols"
      god_3.rules = "of hunter"
      god_3.url = "wtv"  
      
      god_4 = self.new 
      god_4.name = "Hades"
      god_4.symbols = "symbols"
      god_4.rules = "of death"
      god_4.url = "wtv"  
      
      god_5 = self.new 
      god_5.name = "Zeus"
      god_5.symbols = "symbols"
      god_5.rules = "of lighting"
      god_5.url = "wtv"    
      
      [god_1, god_2, god_3, god_4, god_5]
    end
    
    
    
    
    
  end
end 