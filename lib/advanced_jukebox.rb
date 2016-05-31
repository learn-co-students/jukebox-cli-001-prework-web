# require "pry"

my_songs = {
"Go Go GO" => '/home/fidelscodes/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/fidelscodes/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/fidelscodes/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/fidelscodes/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/fidelscodes/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
"Blue" => '/home/fidelscodes/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/fidelscodes/code/labs/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
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
  keys = my_songs.keys
  keys.each.with_index(1) do |title, track|
    puts "#{track}. #{title}"
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
  response = gets.chomp

  if my_songs.has_key?(response)
    system "open #{my_songs[response]}"
  else
    puts "You entered an invalid song name. Try again."
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  flag = true

  while flag
    puts "Please enter a command:"
    command = gets.chomp.downcase

    case command
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      flag = false
    end
  end
end
