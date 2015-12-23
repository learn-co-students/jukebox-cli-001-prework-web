require 'pry'
require 'pry-nav'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  
  puts "Please enter a song name or number:"
  re = gets.chomp
  song_num = (1..songs.size)
  
  re.to_i > 0 ? index = re.to_i - 1 : index = songs.find_index(re)
  chosen_song = songs[index] unless index == nil 
  
  if song_num === re.to_i || songs.include?(re)
    puts "Playing #{chosen_song}"
  else
    puts "Invalid input, please try again"
  end
  
end

def list(songs)
  songs.each_with_index { |song, i| puts "#{i + 1}. #{song}" }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    unless command == "exit"
      case command
      when "list"
        list
      when "play"
        play
      when "help"
        help
      else
        puts "Invalid input, please try again"
      end
    else
      exit_jukebox
      break
    end
  end
end