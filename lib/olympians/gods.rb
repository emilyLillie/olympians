class Olympians
  class Gods
    
    attr_accessor :name, :symbols, :description, :url
    @@all = []
    
    def self.numbered_gods
      puts "1. Aphrodite"
      puts "2. Ares"
      puts "3. Athena"
      puts "4. Hades"
      puts "5. Zeus"
    end 
      
    def self.gods_objects  
      god_1 = Gods.new 
      god_1.name = "Aphrodite"
      god_1.symbols = "symbols"
      god_1.description = "of love"
      god_1.url = "wtv"
    
      god_2 = self.new 
      god_2.name = "Ares"
      god_2.symbols = "symbols"
      god_2.description = "of war"
      god_2.url = "wtv"   
      
      god_3 = self.new 
      god_3.name = "Athena"
      god_3.symbols = "symbols"
      god_3.description = "of hunter"
      god_3.url = "wtv"  
      
      god_4 = self.new 
      god_4.name = "Hades"
      god_4.symbols = "symbols"
      god_4.description = "of death"
      god_4.url = "wtv"  
      
      god_5 = self.new 
      god_5.name = "Zeus"
      god_5.symbols = "symbols"
      god_5.description = "of lighting"
      god_5.url = "wtv"    
      
      [god_1, god_2, god_3, god_4, god_5]
    end
    
    
    
  end
end