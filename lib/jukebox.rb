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
  output  = ""
  output += "I accept the following commands:\n"
  output += "- help : displays this help message\n"
  output += "- list : displays a list of songs you can play\n"
  output += "- play : lets you choose a song to play\n"
  output += "- exit : exits this program\n"
  puts output
end

def play(songs)
  loop do
    puts "Please enter a song name or number:"
    input = gets.chomp
    if input.to_i > 0 and input.to_i < songs.length+1
      puts "Playing #{songs[input.to_i-1]}"
      break
    elsif songs.include?(input)
      puts "Playing #{input}"
      break
    else
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    case input
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
        puts "Invalid input"
    end
  end
end