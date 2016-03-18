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
  puts @text = <<HELP
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
HELP
end

def list(songs)
  songs.each_with_index {|song, track| puts "#{track + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if songs.include?(user_response)
    puts "Playing #{user_response}"
  elsif user_response.to_i != 0 && songs[user_response.to_i - 1] != nil
    puts "Playing #{songs[user_response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = 0
  while user_input != "exit"
    puts "Please enter a command:"
    user_input = gets.chomp
      if user_input == "list"
        list(songs)
      elsif user_input == "play"
        play(songs)
      elsif user_input == "help"
        help
      else
      end
  end
  exit_jukebox
end
