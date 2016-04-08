def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  ARGV.clear
  user_response = gets.chomp

  if songs.include?(user_response) == true 
    puts "Playing #{user_response}"
  elsif user_response.to_i.between?(1, 10) == true
    puts "Playing #{songs[user_response.to_i - 1]}"
  elsif songs.include?(user_response) == false
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp

  while user_response != "exit"

  case user_response
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "help"
    help
  end

  puts "Please enter a command:"
    user_response = gets.chomp
  end

  exit_jukebox

end
