def run(songs)
  input = nil
  until input == "exit"
    puts
    puts "\033[36mRuby Jukebox\033[0m"
    print "Please enter a command: "
    input = gets.downcase.chomp
    case input
      when "help"
        help
      when "play"
        play(songs)
      when "list"
        list(songs)
      when "exit"
        exit_jukebox
      else
        error
    end
  end
end

def help
  puts "help: Displays this menu."
  puts "play: Let's you choose a song. Enter the track number or the artist and song name."
  puts "list: Displays a list of songs you can play."
  puts "exit: Exits the program."
end

def play(songs)
  choice = gets.chomp
  if /^[-+]?[0-9]+$/ === choice
    choice = choice.to_i
    if choice < 1 || choice > songs.length
      error
    else
      puts songs[choice - 1]
    end
  else
    if songs.include?(choice)
      puts choice
    else
      error
    end
  end
end

def list(songs)
  for i in 0..songs.length - 1 do
    puts "#{i + 1}. #{songs[i]}"
  end
end

def error
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
  puts
end