#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
  "Go Go GO" => 'Users/duncanstandish/Development/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
  "LiberTeens" => 'Users/duncanstandish/Development/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  'Users/duncanstandish/Development/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
  "Guiding Light" => 'Users/duncanstandish/Development/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
  "Wolf" => 'Users/duncanstandish/Development/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
  "Blue" => 'Users/duncanstandish/Development/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => 'Users/duncanstandish/Development/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
}

def help
  puts "--type 'help' to see a list of possible commands"
  puts "--type 'list' to see a list of songs you can play"
  puts "--type 'play' and the song number or name to play that song"
  puts "--type 'exit' to quit the application"
end



def list(my_songs)
  my_songs.each { |k,v| puts k }
end


def play(my_songs)
  puts "Please enter a song name."
  song = gets.chomp
  if my_songs.include?(song)
    puts "Now playing: " + song
    system 'open ' + my_songs[song]
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  loop do
    case command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      else
        puts "Please enter a valid command."
    end
  end
end
