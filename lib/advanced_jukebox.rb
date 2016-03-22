my_songs = {
"Go Go GO" => '/Users/pulsifer/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/pulsifer/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/pulsifer/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/pulsifer/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/pulsifer/Development/code/jukebox-cli-001-prework-web/Emerald-Park/05.mp3',
"Blue" => '/Users/pulsifer/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/pulsifer/Development/code/jukebox-cli-001-prework-webjukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands: "
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end

def list(my_songs)
  my_songs.each {|k, v| puts "#{k}" }
end

def play(my_songs)
  puts "Please enter a song title:"
  response = gets.chomp
  if my_songs.include?(response)
    path = my_songs[response]
    puts "Playing <#{response}>"
    system "open #{path}"
  elsif response == "exit"
    exit
  else
    puts "Invalid input. Please try again."
    play(my_songs)
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs) 
  help
  command = nil
  until command == "exit"
    puts "Please enter a command:"
    command = gets.downcase.strip
    case command
    when 'list'
      list(my_songs)
    when 'play'
      list(my_songs)
      play(my_songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end






=begin


def help
  puts "I accept the following commands: "
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end

def list(my_songs)
  my_songs.each {|k, v| puts "#{k}" }
end

def play(my_songs)
  puts "Please enter a song title:"
  response = gets.chomp
  if !my_songs.keys.include?(response)
    puts "Invalid input, please try again: "
    play(my_songs)
  else my_songs.keys.include?(response)
    path = my_songs[response]
    open <path>
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs) 
  help
  command = nil
  until command == "exit"
    puts "Please enter a command:"
    command = gets.downcase.strip
    case command
    when 'list'
      list(my_songs)
    when 'play'
      list(my_songs)
      play(my_songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
=end

