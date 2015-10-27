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
  puts "Usage: jukebox [arguments]"
  print "jukebox help       print documentation
jukebox play      play music
jukebox list      list songs
jukebox exit      exit jukebox
"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  song = gets.chomp
  if song.match(/^(\d)+$/)
    if song.to_i < 1 || song.to_i > (songs.length + 1)
      puts "Invalid input, please try again."
    else
      puts "Playing #{songs[song.to_i - 1]}"
    end
  else
    song_name = nil
    puts song
    songs.each do |s|
      if s.include?(song)
        song_name = s
      end
    end
    if song_name == nil
      puts "Invalid input, please try again."
    else
      puts "Playing #{song_name}"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  response = nil
  while response != "exit"
    puts "Please enter a command:"
    response = gets.chomp.strip.downcase
    case
    when response == "help"
      help
      response = "exit"
    when response == "list"
      list(songs)
    when response == "play"
      play(songs)
    when response == "exit"
      exit_jukebox
    else
      puts "Command does not exist - please try again."
    end
  end
end