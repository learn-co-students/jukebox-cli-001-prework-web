#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
 "Go Go GO" => '/Users/SkipSuva/Development/Ruby-Labs/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/SkipSuva/Development/Ruby-Labs/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/SkipSuva/Development/Ruby-Labs/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/SkipSuva/Development/Ruby-Labs/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/SkipSuva/Development/Ruby-Labs/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/SkipSuva/Development/Ruby-Labs/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/SkipSuva/Development/Ruby-Labs/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exists this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  counter = 0
  my_songs.keys.each do |songs, files|
    puts "#{counter += 1}. #{songs}\n"
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
  puts "Which song would you like to hear?  Please type the exact name."
  choice = gets.chomp

  my_songs.each do |key, value|
    if key.include?(choice)
      puts "Playing #{key}"
      system "open #{value}"
    end
  end
  if my_songs.keys.include?(choice) == false
    puts "Your choice is invalid."  #move this down to prevent the listing?
  end
end


def exit_jukebox
  puts "Thanks for listening! Goodbye."
end


def run(songs)
  puts "Please enter a command:"
  selection = gets.chomp
  
  until selection == "exit"  
    case selection
      when "help"
        help
        puts "Please enter a command:"
        selection = gets.chomp
      when "play"
        play(songs)
        puts "Please enter a command:"
        selection = gets.chomp
      when "list"
        list(songs)
        puts "Please enter a command:"
        selection = gets.chomp
      else
        puts "Please enter a valid command"
        puts "Please enter a command:"
        selection = gets.chomp
      end
    end
  exit_jukebox
end
