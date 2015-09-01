def run(my_songs)
  input = nil
  until input == "exit"
    puts
    puts "\033[36mRuby Jukebox Advanced\033[0m"
    print "Please enter a command: "
    input = gets.downcase.chomp
    case input
      when "help"
        help
      when "play"
        play(my_songs)
      when "list"
        list(my_songs)
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

def play(my_songs)
  choice = gets.chomp
  if /^[-+]?[0-9]+$/ === choice
    choice = choice.to_i
    if choice < 1 || choice > songs.length
      error
    else
      puts songs[choice - 1]
    end
  else
    if my_songs.keys.include?(choice)
      puts choice
    else
      error
    end
  end
end

def list(my_songs)
  i = 1
  my_songs.each_key do |x|
    puts "#{i}. #{x}"
    i += 1
  end
end

def error
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
  puts
end