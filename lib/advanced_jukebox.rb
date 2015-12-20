#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

#my_songs = {
# "Go Go GO" => 'Users/thutrato/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
# "LiberTeens" => 'Users/thutrato/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  'Users/thutrato/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
# "Guiding Light" => 'Users/thutrato/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
# "Wolf" => 'Users/thutrato/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
# "Blue" => 'Users/thutrato/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => 'Users/thutrato/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
# }

my_songs = {
 "Go Go GO" => 'audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'audio/Emerald-Park/02.mp3',
 "Hamburg" =>  'audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'audio/Emerald-Park/04.mp3',
 "Wolf" => 'audio/Emerald-Park/05.mp3',
 "Blue" => 'audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

songs_name = my_songs.keys

def list(my_songs)
  songs_name = my_songs.keys
  songs_name.each_with_index do |song, idx|
  puts "#{idx+1}. #{song}"
  end
end

  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
def play(my_songs)
  songs_name = my_songs.keys  
  puts "Please enter a song name:"
  user_input = gets.chomp
  if songs_name.include?(user_input)
    open my_songs[user_input]
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  loop do
    help
    puts "Please enter a command:"
    input = gets.strip
    if input == "list"
      list(my_songs)
    elsif input == "help"
      help
    elsif input == "play"
      play(my_songs)
    elsif input == "exit"
      exit_jukebox
      break
    else
      puts "Please enter a command:"
    end
  end
end
