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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song,i| puts "#{i+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  if songs.include?(song_request)
    puts "Playing #{song_request}"
  elsif song_request.to_i.between?(1,songs.length)
    puts "Playing #{songs[song_request.to_i-1]}"
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
  command = gets.chomp
  until command == "exit"
    if command == "help"
      help
      run(songs)
    elsif command == "list"
      list(songs)
      run(songs)
    else
      play(songs)
      run(songs)
    end
  break
  end
  exit_jukebox
end
