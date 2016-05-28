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
  songs.each_with_index {|song, index|
  puts "#{index + 1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  x = gets.chomp
  if songs.include?(x)
    y = "Playing #{x}"
  elsif x.to_i > 0 && x.to_i <= songs.size
    songs.each_with_index {|song, index|
    if x.to_i - 1 == index
    y = "Playing #{song}"
  end }
  else
    y = "Invalid input, please try again"
  end
  puts y
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while 4
  puts "Please enter a command:"
  x = gets.chomp
  case x
  when 'list'
    list(songs)
  when 'play'
    list(songs)
    play(songs)
  when 'help'
    help
  when 'exit'
    exit_jukebox
    break
  else
    help
    end
  end
end
