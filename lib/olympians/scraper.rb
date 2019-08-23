
class Olympians
  class Scraper
   
    def self.scrape_all_names
      doc = Nokogiri::HTML(open("https://greekgodsandgoddesses.net/olympians/"))

      god_elements = doc.search("h3 a")
      
      god_elements.map do |god_element|
        god = Olympians::Gods.new
        god.name = god_element.text
        god.url = god_element.attr('href')
        god
      end
    end 
    
    
    def self.scrape_god(god)
      doc = Nokogiri::HTML(open(god.url))
      
      roman_name_td = doc.search('tr').find{|tr| tr.text.include?("Roman")}
      if roman_name_td
        god.roman_name = roman_name_td.search('td').last.text
      else
        god.roman_name = "None found"  
      end
      
      symbols_td = doc.search('tr').find{|tr| tr.text.include?("Symbols")}
      if symbols_td
        god.symbols = symbols_td.search('td').last.text
      else
        god.symbols = "None found"  
      end
      
      rules_td = doc.search('tr').find{|tr| tr.text.include?("Rules")}
      if rules_td
        god.rules = rules_td.search('td').last.text
      else
        god.rules = "None found"  
      end
   
    end
    
  end
end 