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
          puts @gods[0]
        when "2"
          puts @gods[1]
        when "3"
          puts @gods[2]
        when "4"
          puts @gods[3]
        when "5"
          puts @gods[4]
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