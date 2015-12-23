#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/home/ubuntu/workspace/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/home/ubuntu/workspace/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/home/ubuntu/workspace/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/home/ubuntu/workspace/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '/home/ubuntu/workspace/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '/home/ubuntu/workspace/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/home/ubuntu/workspace/jukebox-cli/audio/Emerald-Park/07.mp3'
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
  songs = my_songs.keys
  songs.each_with_index { |song, i| puts "#{i + 1}. #{song}" }
  
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  re = gets.chomp
  song_num = (1..my_songs.size)
  songs = my_songs.keys
  
  re.to_i > 0 ? index = re.to_i - 1 : index = my_songs.find_index(re)
  chosen_song = songs[index] unless index == nil 
  
  if song_num === re.to_i || songs.include?(re)
    puts "Playing #{chosen_song}"
    filepath = my_songs[re]
    system "open #{filepath}" 
  else
    puts "Invalid input, please try again"
  end
  
end

def exit_jukebox
  #this method is the same as in jukebox.rb
    puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
    help
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    unless command == "exit"
      case command
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      when "help"
        help
      else
        puts "Invalid input, please try again"
      end
    else
      exit_jukebox
      break
    end
  end
end
