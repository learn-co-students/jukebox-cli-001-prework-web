#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => "/home/briecoyle/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3",
 "LiberTeens" => "/home/briecoyle/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3",
 "Hamburg" =>  "/home/briecoyle/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3",
 "Guiding Light" => "/home/briecoyle/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3",
 "Wolf" => "/home/briecoyle/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3",
 "Blue" => "/home/briecoyle/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3",
 "Graduation Failed" => "/home/briecoyle/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3"
 }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  my_songs.each do |key, value|
    puts "#{key}"
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  user_input = gets.chomp
  if my_songs.has_key?(user_input)
    puts "Playing #{user_input}"
    system "open #{my_songs.key(user_input)}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  while input != "exit"
    if input == "list"
      list(my_songs)
      puts "Please enter a command:"
      input = gets.chomp
    elsif input == "help"
      help
      puts "Please enter a command:"
      input = gets.chomp
    elsif input == "play"
      play(my_songs)
      puts "Please enter a command:"
      input = gets.chomp
    end
  end
  exit_jukebox
end
