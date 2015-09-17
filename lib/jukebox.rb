require 'pry'

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

def clean_input
 input = gets.chomp.strip.downcase
end

def help 
  puts "type 'list' to see the list of available songs"
  puts "type 'play' to select a song to play"
  puts "type 'help' to see this list of commands"
  puts "type 'exit' to end the program"
end

def play(songs)
  puts "Awesome! What song do you want to play?"

  input = gets.chomp
  numbers = ["1","2","3","4","5","6","7","8","9"]

  if numbers.include?(input) == true
    puts songs[input.to_i - 1]
  elsif songs.include?(input) == true
    puts input
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each do |song|
    puts song
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs)
  input = ""
  help
  puts " "
  until input == "exit"
    puts "Please enter a command:"
    input = clean_input
    case input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"

    else
      puts "Invalid input, please try again"
    end
  end
  exit_jukebox
end


