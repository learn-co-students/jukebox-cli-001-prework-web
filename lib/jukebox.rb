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
  songs.each_with_index {|song, x| puts "#{x + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  if songs.include?(answer)
    puts "Playing #{answer}"
  elsif (1..9).include?(answer.to_i)
    puts "Playing #{songs[(answer.to_i - 1)]}"
    else
      puts "Invalid input, please try again"
    end
end

def run(songs)
  help

  while true
    puts"Please enter a command:"
    answer = gets.chomp
      if answer == "help"
        help
      elsif answer == "play"
        play(songs)
      elsif answer == "list"
        list(songs)
      elsif answer == "exit"
        exit_jukebox
        break
      else
        puts "not a valid choice"
        answer = gets.chomp
      end
    end
end