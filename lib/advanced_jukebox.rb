#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/jaspercurry/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/jaspercurry/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/jaspercurry/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/jaspercurry/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/jaspercurry/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/jaspercurry/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/jaspercurry/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
}

def help
  puts " 
  I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : "

end



def list(my_songs)
  my_songs.each do |name |
    puts name
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  x = 3
  response = gets.chomp

  my_songs.each do |k, v|
    if response == k 
      x = 0
      puts "Playing #{v}"
      system 'open v'
    end
  end
  if x == 3 
    puts "Invalid input, please try again"
  end
end



  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  rply = "go"
until rply == "exit"
help
puts "Please enter a command:"
rply = gets.chomp

  if rply == "list"
    list(songs)
  elsif rply == "play"
    play(songs)
  elsif rply == "help"
    help
  elsif rply == "exit"
    exit_jukebox
  end
end

