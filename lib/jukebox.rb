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
- exit : exits this program
"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"

  user_response = gets.chomp
  number = user_response.to_i

  if songs.include?(user_response) 
    puts "Playing #{user_response}"
  elsif (number > 0 && number <= songs.count)
    puts "Playing #{songs[number - 1]}"
  else 
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  user_response = nil

  while user_response != "exit"
    puts "Please enter a command:"
    user_response = gets.chomp
    
    case user_response
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
  end

  exit_jukebox
end







