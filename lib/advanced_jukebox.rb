#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer



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
  my_songs.each do |k,v|
 
      puts k
   
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
  answer = gets.chomp

    my_songs.each do |k,v|
    
      if answer == k

         puts "Playing <#{k}>"

         system "open #{v}"
         return answer
      end
    end
    puts "Invalid input, please try again"
     answer
end



def exit_jukebox
  #this method is the same as in jukebox.rb
puts "Goodbye"

end


def run(my_songs)
  #this method is the same as in jukebox.rb
  help

  puts "Please enter a command:"
  
  response = gets.chomp
while response != "exit"
    if response == "list"
        list(my_songs)
      elsif response == "play"
        play(my_songs)
      elsif response == "help"
        help
      end
       puts "Please enter a command:"
         response = gets.chomp
  end
  
exit_jukebox

end

