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
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.keys.each_with.index {|k,v| puts "#{v+1}. #{k}"}
end


def play(songs_array)
  puts "Please enter a song name or number:"
  song_name_array = songs_array.collect {|k| k.upcase}
  answer = gets.chomp

  if answer.to_i.between?(1,9)
    #number processing
    song_index = answer.to_i - 1
    puts "Playing #{songs_array[song_index]}"

  elsif song_name_array.include?(answer.upcase)
    #name processing
    puts "Playing #{answer}"

  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  puts "Please enter a command:"
  answer = gets.chomp

  while answer.downcase != "exit" do

    case answer.downcase
      when "help"
        help
        puts "Please enter a command:"
        answer = gets.chomp
      when "list"
        list(songs_array)
        puts "Please enter a command:"
        answer = gets.chomp
      when "play"
        play(songs_array)
        puts "Please enter a command:"
        answer = gets.chomp
    end
  end
  exit_jukebox
end
