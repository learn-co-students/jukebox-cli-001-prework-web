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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i = 1
  songs.each do |song|
    puts "#{i}. #{song}"
    i += 1
  end
end

def play(songs)

  puts "Please enter a song name or number:"
  stringInput = gets.chomp
  intInput = stringInput.to_i

  if intInput != 0 && intInput < songs.length
    puts "Playing #{songs[intInput-1]}"
  elsif songs.include?(stringInput)
    puts "Playing #{stringInput}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  puts "Please enter a command:"
  user_input = gets.chomp

  while user_input
    if user_input == "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "list"
      list(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "play"
      play(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "exit"
      exit_jukebox
      break
    else
      puts "Invalid input, please try again"
      puts "Please enter a command:"
      user_input = gets.chomp
    end
  end

end
