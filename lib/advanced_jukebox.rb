#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  puts <<-EOS
    Welcome to RubyTunes, your CLI jukebox!
    Let's play some tunes.
      -- Type 'LIST' to view your music library.
      -- Type 'PLAY' to select a song and start playing.
      -- Type 'EXIT' to exit RubyTunes.
      -- Type 'HELP' to display this message.
  EOS
end

def list(my_songs)
  my_songs.each_with_index do |song_name, index_num|
    puts "#{index_num+1}. #{song_name}"
  end
end

def play(my_songs)
  "Which song would you like to play? Enter song name or number."
  song_select = gets.chomp
  if !my_songs.include?(song_to_play)
    puts "That song is not in your library. Please enter another song name or number."
  else
    puts "Now playing #{song_to_play}."
    system 'open /Users/MichaelSterling/development/learn/jukebox-cli-001-prework-web/audio/Emerald-Park' << my_songs[song_to_play]
end


  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
end

def exit_jukebox
  "Thanks for using RubyTunes! Goodbye."
  exit
  #this method is the same as in jukebox.rb
end

def run(my_songs)
  help
  puts "Please enter a command:"
  user_input = gets.downcase.strip
    case user_input
    when 'list'
      list(my_songs)
    when 'play'
      list(my_songs)
      play(my_songs)
    when 'help'
      help
    when 'exit'
     exit_jukebox
    else
      help
    end
  end

