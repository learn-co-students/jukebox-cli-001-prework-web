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
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp

  possible_song_numbers = [*"1".."#{songs.length}"]

  jukebox_response = ""

  if songs.include?(user_response)
    jukebox_response = songs.find { |song| song == user_response }
  elsif possible_song_numbers.include?(user_response)
    jukebox_response = songs[possible_song_numbers.find_index { |number| number == user_response}]
  else
    jukebox_response = "Invalid input, please try again"
  end

  puts jukebox_response

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp

  loop do
    case user_response
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
    end
    user_response = gets.chomp
  end
end
