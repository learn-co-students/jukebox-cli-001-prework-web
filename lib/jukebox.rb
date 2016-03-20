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
  puts "--type 'help' to see a list of possible commands"
  puts "--type 'list' to see a list of songs you can play"
  puts "--type 'play' and the song number or name to play that song"
  puts "--type 'exit' to quit the application"
end

def list(songs)
  song_num = 0
  songs.each do |song|
    song_num += 1
    puts "#{song_num}. " + song
  end
end

def play(songs)
  puts "Please enter a song name or number."
  song = gets.chomp
  if song.length == 1
    song = song.to_i
    if song > 0 && song < 10
      puts "Now playing: #{songs[song-1]}"
    else
      puts "Invalid input, please try again."
    end
  elsif song.class == String
    if songs.include?(song)
      puts "Now playing: " + song
    else
      puts "Invalid input, please try again."
    end
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  loop do
    case command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      else
        puts "Please enter a valid command."
    end
  end
end