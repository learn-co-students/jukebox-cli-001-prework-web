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
  puts 
  puts "I accept the following commands:"
  puts "- help : displays this helpfull message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  puts 
end


def list(songs)
  puts
  songs.each_with_index do |song, number|
    puts "#{number+1}. #{song}"
  end
  puts
end


def play(songs)
  puts "Please enter a song name or number:"
  user_pick = gets.chomp
  wrong_command = true
  songs.each_with_index do |song, number|
    if user_pick == song || user_pick.to_i-1 == number
      puts
      puts "Playing #{song}"
      wrong_command = false
    end
  end
  puts "Invalid input, please try again" if wrong_command
end


def exit_jukebox
  puts
  puts "Goodbye"
  puts
end


def run(songs)
  help
  user_choice = ""
  while user_choice != "exit"
    puts
    puts "Please enter a command:"
    user_choice = gets.chomp
    case user_choice
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
      puts
    end
  end
end