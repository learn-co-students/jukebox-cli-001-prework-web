

def help
  help = <<-HELP
Commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP

  puts help
end



def list(my_songs)
  my_songs.each do |key,value|
    puts key
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Select a song by name: "
  selection = gets.chomp
  if my_songs.keys.include?(selection)
    puts "Now playing #{selection}"
    system 'open ' << my_songs[selection]
  else
    puts "Invalid input, please try again"
  end
end 


def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  puts "Enter your username"
  x = gets.chomp
  selection = ""
  help
  while selection
    puts "Please enter a command:"
    selection = gets.chomp
    case selection
    when "help" 
      help
    when "list"
      list(my_songs)
    when "play"
      list(my_songs)
      play(my_songs)
    when "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
