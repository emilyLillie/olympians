class Olympians
  class CLI 
  
  def greeting 
    puts "Here are the Top 5 Olympian Gods:"
    alphabetical_gods
    prompt_input
  end 
  
  def alphabetical_gods
    puts "1. Aphrodite"
    puts "2. Ares"
    puts "3. Athena"
    puts "4. Hades"
    puts "5. Zeus"
  end 
  
  def prompt_input
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
    end
  end 
    
  
end 
end 