#Please note the file paths that worked for started with audio/Emerald-Park/...

# my_songs = {
# "Go Go GO" => 'audio/Emerald-Park/01.mp3',
# "LiberTeens" => 'audio/Emerald-Park/02.mp3',
# "Hamburg" =>  'audio/Emerald-Park/03.mp3',
# "Guiding Light" => 'audio/Emerald-Park/04.mp3',
# "Wolf" => 'audio/Emerald-Park/05.mp3',
# "Blue" => 'audio/Emerald-Park/06.mp3',
# "Graduation Failed" => 'audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  i = 1
  my_songs.each do |key, value|
    puts "#{i}. " + key
    i += 1
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
  puts "Please enter a song name:"
  choice = gets.chomp
  my_songs.each do |key, value|
    if choice == key
      puts "system 'open #{value}'"
      system "open #{value}"
      return true
    end
  end
  puts "I'm sorry, your choice is invalid."
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    case command
    when "list"
      list(my_songs)
    when "help"
      help
    when "play"
      play(my_songs)
    else
      puts "I'm sorry. That's an invalid command. Please try again."
    end
    puts "\nPlease enter a command:"
    command = gets.chomp
  end
  exit_jukebox
end
