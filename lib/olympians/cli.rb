require_relative '../olympians/gods'

class Olympians
  class CLI 
  
  def greeting 
    alphabetical_gods
    prompt_input
  end 
  
  def alphabetical_gods
    puts "Here are the Top 5 Olympian Gods:"
    @gods = Olympians::Gods.gods_objects
    @gods.each.with_index(1) do |god, i|
      puts "#{i}. #{god.name}"
    end
  end 
  
  def prompt_input
    input = "nil" #stub while loop
    while input != "exit"
      puts "Type in the number of the god you want to learn more about, or exit"
      input = gets.strip
      case input 
        when "1"
          puts "Greek Name: " + @gods[0].name
          puts "Symbols: " + @gods[0].symbols
          puts "Rules Over: " + @gods[0].rules
        when "2"
          puts "Greek Name: " + @gods[1].name
          puts "Symbols: " + @gods[1].symbols
          puts "Rules Over: " + @gods[1].rules
        when "3"
          puts "Greek Name: " + @gods[2].name
          puts "Symbols: " + @gods[2].symbols
          puts "Rules Over: " + @gods[2].rules
        when "4"
          puts "Greek Name: " + @gods[3].name
          puts "Symbols: " + @gods[3].symbols
          puts "Rules Over: " + @gods[3].rules
        when "5"
          puts "Greek Name: " + @gods[4].name
          puts "Symbols: " + @gods[4].symbols
          puts "Rules Over: " + @gods[4].rules
        when "exit"
          puts "Thanks for stopping by!"
          exit
        else 
          puts "I'm sorry, I don't know what you mean. Please type 1 through 5 or exit."
      end
    end
  end 
    
  
end #.CLI end
end #.Olympians end