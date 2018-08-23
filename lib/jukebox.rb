require 'pry'

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
    if song_request != "1" && song_request != "9" && songs.join(" ").downcase.include?(song_request.downcase)
      puts "Playing #{song_request}"
      elsif song_request.to_i > 0 && song_request.to_i <= songs.length
        index = song_request.to_i - 1
        puts "Now playing #{songs[index]}"
      else
        puts "Invalid input, please try again"
      end
  end

# passes but need to fix so that ANY user input other than a song name or number will puts out: "Invalid input, please try again"
# also, if user input is invalid, exits the loop so user can enter a new command but not a new song name/number 

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
    while user_input.downcase != "exit"
      if user_input.downcase == "help"
        help
        user_input = gets.chomp
      elsif user_input.downcase == "list"
        puts list(songs)
        user_input = gets.chomp
      elsif user_input.downcase == "play"
        play(songs)
        user_input = gets.chomp
      else user_input = gets.chomp
      end
    end
    exit_jukebox
end





