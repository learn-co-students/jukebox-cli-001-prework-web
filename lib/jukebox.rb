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
  puts "I accept the following commands: "
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if response.to_i.between?(1, 9)
    num = response.to_i - 1
    puts "Playing <#{songs[num]}>"
  elsif songs.include?(response)
    puts "Playing <#{response}>"
  elsif response == "exit"
    exit
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help
  command = nil
  until command == "exit"
    puts "Please enter a command:"
    command = gets.downcase.strip
    case command
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
      puts "Invalid command. Please try again:"
      help
    end
  end
end

