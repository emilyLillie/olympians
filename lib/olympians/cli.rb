require_relative '../olympians/gods'
require_relative '../olympians/scraper'
# require 'pry'
class Olympians
  class CLI 
  
  def greeting
    alphabetical_gods
    prompt_input
  end 
  
  def alphabetical_gods
    puts "Here are the 15 Olympian Gods:"
    @gods ||= Olympians::Gods.gods_objects
    @gods.each.with_index(1) do |god, i|
      puts "#{i}. #{god.name}"
    end
  end 
  
  def prompt_input
    input = "nil"
    while input != "exit"
      puts "Type in the number of the god you want to learn more about, or exit"
      input = gets.strip
      
      if input.to_i > 0 
        selected_god = @gods[input.to_i - 1]
        Olympians::Scraper.scrape_god(selected_god)
          puts "Greek Name: " + "#{selected_god.name}"
          puts "Roman Name: " + "#{selected_god.roman_name}"
          puts "Symbols: " + "#{selected_god.symbols}"
          puts "Rules Over: " + "#{selected_god.rules}"
      elsif input == "exit"
          puts "Thanks for stopping by!"
          exit
      elsif input == "list"
         alphabetical_gods
      else 
          puts "I'm sorry, I don't know what you mean. Please type 1 through 5 or exit."
      end
    end
  end
    
  
end 
end