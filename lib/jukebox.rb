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
  puts "I accpect the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each { |e| puts e }
end

def play(songs)
  # puts "Please enter a song name or number:"
  song_name = gets.chomp

  # songs.include?(song_name) ? puts "Playing #{song_name}" : puts "Invalid input, please try again"
  if songs.include?(song_name)
    puts song_name
    puts "Playing #{song_name}"
  elsif song_name.to_i > 0
    song_number = song_name.to_i - 1
    if songs[song_number]
      puts "Playing #{songs[song_number]}"
    else
      puts "Invalid input, please try again"
    end
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
  comm = gets.chomp

  until comm == "exit"
    case comm
    when "list"
      list(songs)

    when "play"
      play(songs)

    when "help"
      help
    else
      # puts "Invalid command."
    end

    puts "Please enter a command:"
    comm = gets.chomp
  end

  exit_jukebox
end

# run(songs)
