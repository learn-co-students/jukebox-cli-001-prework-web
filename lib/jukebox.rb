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
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song number or name:"
  pick = gets.chomp
  if (1..9).to_a.include?(pick.to_i)
    puts "Playing #{songs[pick.to_i - 1]}"
  elsif songs.include?(pick)
    puts "Playing #{pick}"
  else
    puts "Invalid input, please try again"
  end 
end

def exit_jukebox
  puts "Goodbye!"
end

def run(songs)
  help
  while true
    puts "Please enter a command:"
    command = gets.strip
    if command == "help"
      help 
    elsif command == "list"
      list(songs)
    elsif command == 'play'
      play(songs)
    elsif command == 'exit'
      exit_jukebox
      break
    else
      puts "Invalid command"
      help
    end
  end
end
