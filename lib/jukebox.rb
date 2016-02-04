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
  - exit : exits this program"
end

def play(songs)
  nums =* (1..9)
  puts "Please enter a song name or number:"
  user_response = gets.chomp

  if nums.include?(user_response.to_i)
    puts "Playing #{songs[user_response.to_i-1]}"
  elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else 
    puts "Invalid input, please try again."
  end
end

def list(songs)
  songs.each_with_index{|song, index|
   puts "#{index+1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help 
  response = ""

  until response == "exit" do
    puts "Please enter a command:"
    response = gets.chomp
    if response == "help"
      help
    elsif response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == exit
      exit_jukebox
    end
  end
end

