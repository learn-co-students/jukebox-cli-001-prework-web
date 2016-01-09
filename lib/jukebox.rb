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
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, number|
    puts "#{number + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  pick = gets.chomp
  
  if songs.include?(pick)
    puts "Playing #{pick}"
  elsif pick.to_i != 0 && pick.to_i <= songs.count
    puts "Playing #{songs[pick.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  help

  puts "Please enter a command:"
  command = gets.chomp
  
  unless command == "exit"
    puts "Please enter a command:"
    command = gets.chomp
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    end
    
  end
  exit_jukebox
end
        