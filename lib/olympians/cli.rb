require_relative '../olympians/gods'

class Olympians
  class CLI 
  
  def greeting 
    puts "Here are the Top 5 Olympian Gods:"
    alphabetical_gods
    prompt_input
  end 
  
  def alphabetical_gods
    #Olympians::Gods.all_gods
    puts "trying 1"
  end 
  
  def prompt_input
    input = "nil" #stub while loop
    while input != "exit"
      puts "Type in the number of the god you want to learn more about, or exit"
      input = gets.strip
      case input 
        when "1"
          puts "Aphrodite's symbols and whatever"
        when "2"
          puts "Ares's symbols and whatever"
        when "3"
          puts "Athena's symbols and whatever"
        when "4"
          puts "Hades's symbols and whatever"
        when "5"
          puts "Zeus's symbols and whatever"
        when "exit"
          exit
        else 
          puts "I'm sorry, I don't know what you mean. Please type 1 through 5 or exit."
      end
    end
  end 
    
  
end #.CLI end
end #.Olympians end