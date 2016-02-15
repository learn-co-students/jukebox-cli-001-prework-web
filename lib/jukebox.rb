songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands \n
   - help : displays this help message \n
   - list : displays a list of songs you can play \n
   - play : lets you choose a song to play \n
   - exit : exits this programlearn"
end

def list(array)
  array.each_with_index do |value, index|
    puts "#{index+1}. #{value}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  array.each_with_index do |value, index|
    if input == value || input.to_i == index + 1
      puts "Playing #{value}..."
      return
    end
  end
  puts "Invalid input, please try again"
end 

def exit_jukebox
  puts "Goodbye."
end

def run(array)
  puts "Please enter a command:"
  input = ""
  until input == "exit"
    input = gets.chomp
    case input
      when "help"
        help
      when "list"
        list(array)
      when "play"
        play(array)
      when "exit"
        exit_jukebox
        return
      else
        puts "That's not valid" 
    end 
    puts "Please enter a command, or type \"help\" for a list of commands"
  end
end