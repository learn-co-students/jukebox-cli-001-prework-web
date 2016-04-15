require 'pry' #    binding.pry
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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"  
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  puts 
end

def list(songs)
  puts
  songs.each_with_index do |value,index|
    puts "#{index += 1}. #{value}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name =   gets.chomp.delete('\\"')
  song_number = song_name.to_i
  if songs.include?(song_name)
     puts "♬ Playing #{song_name} ♬ "
     puts 
  elsif (1..9).include?(song_number)
     puts "♬ Playing #{songs[song_number-1]} ♬"
     puts
  else
     puts "Invalid input, please try again"
  end
 end

def exit_jukebox 
  abort("...Goodbye")
end


def run(songs)
  help
  loop do 
    puts "Please enter a command:"
    feed = gets.chomp
    case feed
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
    end
   end  
end
