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

def play(song_list)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if song_list.include?(choice)
    puts "Playing #{choice}"
  elsif (1..song_list.length).include?(choice.to_i)
    puts "Playing #{song_list[choice.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(song_list)
  song_list.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_list)
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    when "list"
      list(song_list)
    when "play"
      play(song_list)
    else
      puts "Invalid command"
    end
  end
end
