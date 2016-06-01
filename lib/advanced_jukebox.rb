#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/ozzie/Developemt/code/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/ozzie/Developemt/code/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/ozzie/Developemt/code/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/ozzie/Developemt/code/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/ozzie/Developemt/code/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/home/ozzie/Developemt/code/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/ozzie/Developemt/code/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  output  = ""
  output += "I accept the following commands:\n"
  output += "- help : displays this help message\n"
  output += "- list : displays a list of songs you can play\n"
  output += "- play : lets you choose a song to play\n"
  output += "- exit : exits this program\n"
  puts output
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
  loop do
    puts "Please enter a song name:"
    input = gets.chomp
    if my_songs.include?(input)
      puts "Playing #{my_songs[input]}"
      break
    else
      puts "Invalid input, please try again"
      break
    end
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
    input = gets.chomp
    case input
      when "help"
        help
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      when "exit"
        exit_jukebox
        break
      else
        puts "Invalid input"
    end
  end
end

run(my_songs)