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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  input = gets.chomp
  if songs.include?(input)
    puts "Playing #{input}"
  elsif (1..songs.length).include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end

def list(songs)
  puts songs.map.with_index(1) {|song, idx| idx.to_s+". "+song}
end

def exit_jukebox
  puts "Goodbye"
end

def invalid(songs)
  puts "Invalid input, please try again."
  run(songs)
end

def run(songs)
  puts "Please enter a command:"
  case gets.chomp
    when "help"
    help
    when "list"
    list(songs)
    when "play"
    play(songs)
    when "exit"
    exit_jukebox
    else
    invalid(songs)
  end
end