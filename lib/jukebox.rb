# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

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
  songs.each_with_index {|title, number|
    puts "#{number + 1}. #{title}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if ("1".."9").include?(response)
    puts "Playing #{songs[response.to_i - 1]}"
  elsif songs.include?(response)
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  response = ""
  until response == "exit"
    puts "Please enter a command:"
    response = gets.chomp
    if response == "list"
      list(songs)
#      puts "Please enter a command:"
#      response = gets.chomp
    if response == "help"
      help
#      puts "Please enter a command:"
#      response = gets.chomp
    if response == "play"
      play(songs)
#      puts "Please enter a command:"
#      response = gets.chomp
    end
  end
  end
end
  exit_jukebox
end
