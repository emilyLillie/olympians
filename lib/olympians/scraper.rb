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
      athena_doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/goddesses/athena/"))
      
      god_3 = Gods.new 
      god_3.name = athena_doc.search("h1.entry-title").text.strip
      god_3.symbols = athena_doc.search("tr.row-6 td.column-2").text.strip
      god_3.rules = athena_doc.search("tr.row-3 td.column-2").text.strip
      god_3.url = "https://greekgodsandgoddesses.net/goddesses/athena/"
      
      
      hades_doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/gods/hades/"))
      
      god_4 = Gods.new 
      god_4.name = hades_doc.search("h1.entry-title").text.strip
      god_4.symbols = hades_doc.search("tr.row-5 td.column-2").text.strip
      god_4.rules = hades_doc.search("tr.row-3 td.column-2").text.strip
      god_4.url = "https://greekgodsandgoddesses.net/gods/hades/" 
      
      zeus_doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/gods/zeus/"))
      
      god_5 = Gods.new 
      god_5.name = zeus_doc.search("h1.entry-title").text.strip
      god_5.symbols = zeus_doc.search("tr.row-6 td.column-2").text.strip
      god_5.rules = zeus_doc.search("tr.row-3 td.column-2").text.strip
      god_5.url = "https://greekgodsandgoddesses.net/gods/zeus" 
      
      [god_1, god_2, god_3, god_4, god_5]
    end
    
    
    
    
    
  end
end 