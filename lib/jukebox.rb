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
  puts ("I accept the following commands:")
  puts ("- help : display this help message")
  puts ("- list : display a list of songs you can play")
  puts ("- play : lets you choose a song to play")
  puts ("- exit : exits the program")
end

def list(songs)
  songs.each_with_index do |song, index|
    puts ("#{index+1}. #{song}")
  end
end

def play(songs)
  puts ("Please enter a song name or number:")
  selection = gets.chomp
  if (songs.include?(selection))
    puts ("Playing #{selection}")
  elsif (selection.to_i > 0 && selection.to_i <= songs.size)
    puts ("Playing #{songs[selection.to_i - 1]}")
  else
    puts ("Invalid input, please try again")
  end
end

def exit_jukebox
  puts ("Goodbye")
end

def run(songs)
  help
  puts ("Please enter a command:")
  command = gets.chomp
  until (command == "exit")
    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
    puts ("Please enter a command:")
    command = gets.chomp
  end
  exit_jukebox
end

