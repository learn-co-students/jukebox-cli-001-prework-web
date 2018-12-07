songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "
  ** Commands **

  help - Prints this command list.

  list - Prints a list of songs that can be played.

  play - Play a song using its index # or full name.

  exit - Exits the Jukebox app. 
  "
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
  puts "\n"
end

def play(songs)
  input = gets.chomp
  output = "Invalid input, please try again"
  songs.each_with_index do |song, index|
    if input == song || input == "#{index + 1}"
      output = song
      break
    end
  end
  puts output
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  quit = false
  while !quit
    input = gets.chomp.downcase.strip
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      quit = true
    else
      puts "Invalid input - type 'help' for a valid command list"
    end
  end
end


