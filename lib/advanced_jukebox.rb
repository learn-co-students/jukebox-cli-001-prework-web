#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

songs = {
  "Go Go GO" => '/home/nitrous/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/home/nitrous/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/home/nitrous/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/home/nitrous/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
  "Wolf" => '/home/nitrous/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
  "Blue" => '/home/nitrous/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/home/nitrous/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
  }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(songs)
  a = []
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  counter = 1
  songs.each do |song, index|
    puts "#{counter}. #{song}"
    a << index
    counter += 1
  end
  a
end


def play(songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  response = gets.chomp
  if songs.has_key?(response)
    #puts songs[response]
    Sound.beep(100, 500)
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(songs)
  #this method is the same as in jukebox.rb
  help
  puts "Please enter a command:"
  response = gets.chomp
  unless response == "exit"
    case response
      when "help"
      help
      when "list"
      list(songs)
      when "play"
      play(songs)
      else
      puts "Invalid input, please try again"
    end
    run(songs)
  end
  exit_jukebox
end

run(songs)
