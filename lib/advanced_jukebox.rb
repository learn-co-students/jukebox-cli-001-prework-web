#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => '/Users/kqianMac/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/kqianMac/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/kqianMac/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/kqianMac/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/kqianMac/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/kqianMac/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/kqianMac/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
 }

def help
  #this method should be the same as in jukebox.rb

end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  puts my_songs.keys
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
  pick = gets.chomp
  if my_songs.include?(pick)
    puts "Playing #{pick}"
    system "open #{my_songs[pick]}"
  else
    puts "Invalid input, please try again"
  end  
end

def exit_jukebox
  #this method is the same as in jukebox.rb
end

def run(my_songs)
  #this method is the same as in jukebox.rb
   while true
    puts "Please enter a command:"
    command = gets.chomp
    if command == "list" 
       list(my_songs)
    elsif command == "play"
       play(my_songs)
    elsif command == "exit"
       exit_jukebox
       break
    else
	puts "Invalid command"
    end
   
   end 
end
