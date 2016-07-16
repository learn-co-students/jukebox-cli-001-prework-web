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
  songs.each_with_index { |i, song|
    puts "#{i}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"

  # user input
  ui = gets.chomp

  song = nil
  song_i = songs.index(ui)
  if (song_i != nil)
    song = songs[song_i]
  else
    index = ui.to_i
    song = songs[index-1] unless index == 0
  end

  if (song == nil)
    puts "Invalid input, please try again"
  else
    puts "Playing #{song}"
  end

end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  help
  puts "Please enter a command:"


  going = true

  while going
    usrcmd = gets.chomp
    case usrcmd
    when "list"
      list
    when "help"
      help
    when "play"
      play
    when "exit"
      exit_jukebox
      going = false
    end
  end
end

#run([])

