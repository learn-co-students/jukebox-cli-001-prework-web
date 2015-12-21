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

# help, play, list, exit

def help
  print %(I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
)
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp

  if user_input.to_i-1 < songs.length && user_input.to_i != 0
    puts "Playing #{songs[user_input.to_i-1]}"
  elsif index = songs.index(user_input)
    puts "Playing #{songs[index]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.chomp

  case user_input
  when "help"
    help()
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox()
  else
    run(songs)
  end
end