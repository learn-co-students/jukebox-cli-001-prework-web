def help
 puts "I accept the following commands : \n
  - help : displays this help message \n
  - list : displays a list of songs you can play \n
  - play : lets you choose a song to play \n
  - exit : exits this program"
end

def list(my_songs)
  my_songs.keys.each.with_index(1) do |title, index|
    puts "#{index}. #{title}"
  end
end

def play(my_songs)
  puts "Please enter a song name: "
  user_input = gets.chomp
  if my_songs.include?(user_input)
    system "open #{my_songs[user_input]}"
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
   help
  user_input = " "
  while user_input
    puts "Please enter a command:"
    input = gets.downcase.chomp
    case input
    when 'help'
      help
    when 'list'
      list(my_songs)
    when 'play'
      play(my_songs)
    when 'exit'
      exit_jukebox
      break
    else
      help
    end    
  end
end
