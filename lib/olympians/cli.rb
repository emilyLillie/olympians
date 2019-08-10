require_relative '../olympians/gods'
require_relative '../olympians/scraper'

class Olympians
  class CLI 
  
  def greeting 
    alphabetical_gods
    prompt_input
  end 
  
  def alphabetical_gods
    puts "Here are the Top 5 Olympian Gods:"
    @gods = Olympians::Scraper.gods_objects
    @gods.each.with_index(1) do |god, i|
      puts "#{i}. #{god.name}"
    end
  end 
  
  def prompt_input
    input = "nil" #stub while loop
    while input != "exit"
      puts "Type in the number of the god you want to learn more about, or exit"
      input = gets.strip
      
      if input.to_i > 0 
        selected_god = @gods[input.to_i - 1]
          puts "Greek Name: " + "#{selected_god.name}"
          puts "Symbols: " + "#{selected_god.symbols}"
          puts "Rules Over: " + "#{selected_god.rules}"
      elsif input == "exit"
          puts "Thanks for stopping by!"
          exit
      else 
          puts "I'm sorry, I don't know what you mean. Please type 1 through 5 or exit."
      end
    end
  end
    
  
end 
end