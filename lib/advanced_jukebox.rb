#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer


 my_songs = {
 "Go Go GO" => '/Users/Evan/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/Evan/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/Evan/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/Evan/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/Evan/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/Evan/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/Evan/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
 }

def help
  puts <<END_STR
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
END_STR
end



def list(my_songs)
  my_songs.keys.collect do |name|
    puts name
  end
end


def play(my_songs)
  
  puts "Please enter a song name:"
  input = gets.chomp

  if my_songs.any? { |song, location| song == input}
  
      puts "Playing #{input}"
      system "open #{my_songs[input]}"
      # Needed interpolation, used double quotes for string.
      
  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  loop do
  puts "Please enter a command:"
  command = gets.chomp
    case command
     when "list"
       list(my_songs)
     when "play"
       play(my_songs)
     when "help"
       help
     when "exit"
       exit
     break
   end
  end
end
