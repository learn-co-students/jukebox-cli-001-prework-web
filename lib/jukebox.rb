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


# def say_hello(name)
#   "hi #{name}!"
# end

# puts "Enter your name: "
# user_name = gets.chomp

# puts say_hello(user_name)

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index {|songs, index| puts "#{index + 1}. #{songs}"}
end


def play(songs)
  puts "Please enter a song or number:"
  selection = gets.chomp
  if (1..9).to_a.include?(selection.to_i)
    puts "Playing #{songs[selection.to_i - 1]}"
  elsif songs.include?(selection)
    puts "Playing #{selection}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  selection = ""
  while selection
    puts "Please enter a command:"
    selection = gets.downcase.strip
    case selection
    when "list"
      list(songs)
    when "play"
      list(songs)
      play(songs)
    when "exit"
      exit_jukebox
      break
    else
      puts "I didnt get that, please use 'help' to see a list of valid commands"
      help
    end
  end
end