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

#def say_hello(name)
#  "Hi #{name}!"
#end
#puts "Enter your name:"
#users_name = gets.chomp
#puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
  
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input.to_i == 0 && songs.include?(user_input)
    puts "Playing #{user_input}"
  elsif user_input.to_i.between?(1,9)
    puts "Playing #{songs[user_input.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
  
end

def run(songs)
  loop do
    help
    puts "Please enter a command:"
    input = gets.strip
    if input == "list"
      list(songs)
    elsif input == "help"
      help
    elsif input == "play"
      play(songs)
    elsif input == "exit"
      exit_jukebox
      break
    else
      puts "Please enter a command:"
    end
  end
end