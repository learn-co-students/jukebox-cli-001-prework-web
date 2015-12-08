




#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

def my_songs 
{
"Go Go GO" => '/Users/MMac/Coding/Prework/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/MMac/Coding/Prework/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/MMac/Coding/Prework/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/MMac/Coding/Prework/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/MMac/Coding/Prework/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/MMac/Coding/Prework/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/MMac/Coding/Prework/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
 }
end

def help
  puts "I accept the following commands"
  puts "- help : displays this message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end

def help_prompt
  puts "I accept the following commands"
  puts "- help : displays this message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  my_songs.each do |key, value|
    puts key
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
    choice = gets.chomp
      if my_songs.keys.include?(choice)
        puts "Playing #{choice}"
        system "open #{my_songs[choice]}"
      else
        puts "Invalid input, please try again."
      end
    end


  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  

def exit_jukebox
  puts "Goodbye."
end

def run(my_songs)
  prompt = "Please enter a command:"
  puts prompt
    while command = gets.chomp
    case command 
    when "list"
      list(my_songs)
      puts prompt
    when "play"
      play(my_songs)
      puts prompt
    when "help"
      help_prompt
      puts prompt
    when "exit"
      exit_jukebox
      break
    end
  end
end
