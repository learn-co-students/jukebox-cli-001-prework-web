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
  puts %q(I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program)
end

def list(songs)
  songs.each_with_index do |song,i|
    puts (i + 1).to_s + ". " + song
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp

  if song.to_i.to_s == song && songs.length >= song.to_i
    puts "Playing #{songs[song.to_i - 1]}"
  elsif songs.include?(song)
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  command = ""
  
  while command != "exit"
    puts "Please enter a command:"
    command = gets.chomp

    case command
    when "exit"
      exit_jukebox
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
      puts "Invalid command."
    end
  end
end