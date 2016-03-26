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

def list(songs)
  songs.each_with_index {|v, i|
    puts "#{i + 1}. #{v}"
    }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  slist = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  if slist.include?(input)
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "Playing #{songs[songs.index(input)]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  running = true
  help
  puts "Please enter a command:"
  input = gets.chomp
  while running
    input = gets.chomp
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      break
    else
      puts "Invalid input, please try again"
    end
  end
end

