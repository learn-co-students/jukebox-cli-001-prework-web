#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/KhaledaNYC/code/labs/code/labs/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/KhaledaNYC/code/labs/code/labs/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/KhaledaNYC/code/labs/code/labs/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/KhaledaNYC/code/labs/code/labs/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/KhaledaNYC/code/labs/code/labs/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/home/KhaledaNYC/code/labs/code/labs/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/KhaledaNYC/code/labs/code/labs/jukebox-cli/audio/Emerald-Park/07.mp3'
}

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
  my_songs.keys.each do |song|
    puts song
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  if my_songs.keys.include?(song)
    system "open #{my_songs[song]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help()
  puts "Please enter a command:"
  user_response = gets.chomp
  if user_response == "exit"
    exit_jukebox()
  else
  	until user_response == "exit"
  			if user_response == "play"
    			play(my_songs)
    			puts "Enter command:"
  		user_response = gets.chomp
  			elsif user_response == "list"
    			list(my_songs)
    			puts "Enter command:"
  		user_response = gets.chomp
  			elsif user_response == "help"
    			help()
    			puts "Enter command:"
  		user_response = gets.chomp
  			end
    end
    exit_jukebox()
  end
end
