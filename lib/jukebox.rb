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
  help = "accept the following commands:
          - help : displays this help message
          - list : displays a list of songs you can play
          - play : lets you choose a song to play
- exit : exits this program Goodbye"

  puts help

end

def play(songs)
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
  if (1..9).to_a.include?(song_to_play.to_i)
    puts "Playing #{songs[song_to_play.to_i - 1]}"
  elsif songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, idx|
    puts "{#idx}. #{song}"
  end
end

def exit_jukebox
  print "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.strip

  while response == " "

  case response
    when response == "list"
      list(songs)
    when response == "play"
      play(songs)
     play(songs)
  when response == "help"
    help
  when response == "exit"
    exit
    break
  else
    help
  end
  end

  end