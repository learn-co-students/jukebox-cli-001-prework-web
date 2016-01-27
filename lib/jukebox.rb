require 'pry'

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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(array) 
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  #user_input = user_input.split.map{|x| x.capitalize}.join" "
  array.each do |x|    
    if array.include?(array[user_input.to_i-1]) && user_input.to_i-1 > (-1)
      puts "Playing #{array[user_input.to_i-1]}"
    elsif user_input == x
    puts "Playing #{x}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def list(array)
  array.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)  
  help 
  puts 'Please enter a command:'
  user_command = gets.chomp
 
  if user_command == "play"
    play(array)
  elsif user_command == "list"
    list(array)
  elsif user_command == "exit"
    exit_jukebox
  end      
end