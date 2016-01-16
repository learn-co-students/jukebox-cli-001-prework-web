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

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program "
end

def list(songs)
  songs.each_with_index do |element, index|
    puts "#{index + 1}." + " " + "#{element}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_response = gets.chomp
  if songs.include?(song_response)
    puts "Playing #{song_response}"
  elsif(1..9).include?(song_response.to_i)
    puts "Playing #{songs[song_response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
until user_input == "exit" do
  if user_input == "help"
    help
  elsif user_input == "list"
    list(songs)
  elsif user_input == "play"
    play(songs)
  else 
    puts "Invalid command"
  end
  puts "Please enter a command:"
  user_input = gets.chomp
end
  exit_jukebox
end

