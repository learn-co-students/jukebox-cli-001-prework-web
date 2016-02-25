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
puts %/
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
 /
end

def list(array)
  array.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end 
end

def play(array)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if array.include?(user_response) 
    puts "Playing #{user_response}"
  elsif (1..10).include?(user_response.to_i)
    puts "Playing #{array[user_response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

# def run
#   help
#   puts "Please enter a command:"
#   #binding.pry
#   user_response = gets.chomp
#   if user_response == "exit" 
#     exit_jukebox
#     #break
#   else
#     puts "Please enter a command:"
#     user_response = gets.chomp
#     if user_response == "list"
#       list(songs)
#     elsif user_response == "play"
#       play(songs)
#     elsif user_response == "help"
#       help
#     else
#       puts "Please enter a valid command:"
#     end
#   end
# end

def run(arg1)
  help
 
  while true
    puts "Please enter a command:"
    user_input = gets.strip
    case user_input
    when "exit" 
      exit_jukebox
      break
    when "list"
      list(arg1)
    when "play"
      play(arg1)
    when "help"
      help
    else
      puts "Please enter a valid command:"
    end
  end
end

#help
#run(songs)