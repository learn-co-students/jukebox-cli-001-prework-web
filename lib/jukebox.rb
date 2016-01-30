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

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)
 

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  until user_input == "exit"
    if user_input == "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "play"
      puts "Please enter a song name or number:"
      play_output = play(songs)
      # puts play_output
      if play_output == "Invalid input, please try again."
        user_input = "play"
      else
        puts "Please enter a command:"
        user_input = gets.chomp
      end
    elsif user_input == "list"
      songs_with_numbers = list(songs)
      # songs_with_numbers.each do |song|
      #   puts "#{song}"
      # end
      puts "Please enter a command:"
      user_input = gets.chomp
    else
      puts "I do not understand your request. Use 'help' for more information."
      puts "Please enter a command:"
      user_input = gets.chomp
    end
  end
  exit_jukebox
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(song_array)
  song_choice = gets.chomp
  all_songs = list(song_array)
  all_songs.each do |number_song|
    if number_song.include?(song_choice)
      puts "Playing #{number_song}"
      return "#{number_song}"
    end
  end
  puts "Invalid input, please try again."
  return "Invalid input, please try again."
end

def list(song_array)
  song_list_array = []
  song_array.each_with_index do |song, song_number|
     song_list_array << "#{song_number + 1}. #{song}"
     puts "#{song_number + 1}. #{song}"
  end
  song_list_array
end

def exit_jukebox
  puts "Goodbye"
end
