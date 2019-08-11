
class Olympians
  class Scraper
   
    def self.scrape_aphrodite
      
      aphro_doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/goddesses/aphrodite/"))
      
      god_1 = Gods.new 
      god_1.name = aphro_doc.search("h1.entry-title").text.strip
      god_1.roman_name = aphro_doc.search("tr.row-11 td.column-2").text.strip
      god_1.symbols = aphro_doc.search("tr.row-6 td.column-2").text.strip
      god_1.rules = aphro_doc.search("tr.row-3 td.column-2").text.strip
      god_1
      
    end
    
    def self.scrape_ares
    
      ares_doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/gods/ares/"))
      
      god_2 = Gods.new 
      god_2.name = ares_doc.search("h1.entry-title").text.strip
      god_2.roman_name = ares_doc.search("tr.row-9 td.column-2").text.strip
      god_2.symbols = ares_doc.search("tr.row-6 td.column-2").text.strip
      god_2.rules = ares_doc.search("tr.row-3 td.column-2").text.strip
      god_2
      
    end
    
    def self.scrape_artemis
      
      athena_doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/goddesses/athena/"))
      
      god_3 = Gods.new 
      god_3.name = athena_doc.search("h1.entry-title").text.strip
      god_3.roman_name = athena_doc.search("tr.row-9 td.column-2").text.strip
      god_3.symbols = athena_doc.search("tr.row-6 td.column-2").text.strip
      god_3.rules = athena_doc.search("tr.row-3 td.column-2").text.strip
      god_3
      
    end
    
    def self.scrape_hades
      
      hades_doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/gods/hades/"))
      
      god_4 = Gods.new 
      god_4.name = hades_doc.search("h1.entry-title").text.strip
      god_4.roman_name = hades_doc.search("tr.row-10 td.column-2").text.strip
      god_4.symbols = hades_doc.search("tr.row-5 td.column-2").text.strip
      god_4.rules = hades_doc.search("tr.row-3 td.column-2").text.strip
      god_4
      
    end
    
    def self.scrape_zeus
      
      zeus_doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/gods/zeus/"))
      
      god_5 = Gods.new 
      god_5.name = zeus_doc.search("h1.entry-title").text.strip
      god_5.roman_name = zeus_doc.search("tr.row-13 td.column-2 a").text.strip
      god_5.symbols = zeus_doc.search("tbody.row-hover tr.row-6 td.column-2").text.strip
      god_5.rules = zeus_doc.search("tr.row-3 td.column-2").text.strip
      god_5
      
    end 
    
  end
end 