#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => '/Users/MattCassara/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/MattCassara/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/MattCassara/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/MattCassara/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/MattCassara/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/MattCassara/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/MattCassara/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands \n
   - help : displays this help message \n
   - list : displays a list of songs you can play \n
   - play : lets you choose a song to play \n
   - exit : exits this programlearn"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.each do |name, path|
    puts "1. #{name}"
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
  puts "Please enter a song name:"
  input = gets.chomp
  my_songs.each do |name, path|
    if input.downcase == name.downcase
      puts "Playing song..."
      system "open #{path}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Thanks for playing! Goodbye."
end

def run(array)
  puts "Welcome to The JukeBox. Please enter a command, or type \"help\" for a list of commands:"
  input = ""
  until input == "exit"
    input = gets.chomp
    case input
      when "help"
        help
      when "list"
        list(array)
      when "play"
        play(array)
      when "exit"
        exit_jukebox
        return
      else
        puts "That's not valid" 
    end 
    puts "Please enter a command, or type \"help\" for a list of commands"
  end
end
