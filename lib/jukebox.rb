def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number: "
  users_response = gets.chomp
  song_numbers = 1..(songs.length)

  if songs.include?(users_response)
    puts "Playing #{songs[songs.index(users_response)]}"
  elsif song_numbers.include?(users_response.to_i) #to_i necessary?
    puts "Playing #{songs[(users_response.to_i)-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index{|song, index|
    puts "#{index+1}. #{song}"
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  prompt = "Please enter a command:"
  puts prompt
  users_response = *(gets.strip)
  i = 0

  until i > users_response.length || users_response.include?("exit")
    if users_response[i] == "list"
      list(songs)
    elsif users_response[i] == "play"
      play(songs)
    elsif users_response[i] == "help"
      help
    end
    i += 1
    puts prompt
    users_response << gets.strip
  end
  exit_jukebox
end