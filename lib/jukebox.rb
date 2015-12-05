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

  songs.each_with_index {|song, i| puts "#{i + 1}. #{song}"}

end


def play(songs)

puts "Please enter a song name or number:"
user_response = gets.chomp

    if songs.include?(user_response)
      puts "Playing #{user_response}"
    elsif (1..9).include?(user_response.to_i)
      puts "Playing #{songs[(user_response.to_i - 1)]}"
    else
      puts "Invalid input, please try again"
    end

end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help

  while true
    puts"Please enter a command:"
    user_says = gets.chomp
      if user_says == "help"
        help
      elsif user_says == "play"
        play(songs)
      elsif user_says == "list"
        list(songs)
      elsif user_says == "exit"
        exit_jukebox
        break
      else
        puts "not a valid choice"
        user_says = gets.chomp
      end
    end
  
end





