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

=begin def say_hello(name)
  "Hi #{name}!"
end
 
puts "Enter your name:"
users_name = gets.chomp
 
puts say_hello(users_name)

=end
def run(songs)
  y = 0

  while y < 1
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  puts "You selected: #{user_input}"

    if user_input == "help"
      help
    elsif user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    elsif user_input == "exit"
      exit_jukebox
      y = 1
    end
  end

end

def help 
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def list(songs)
  x = 0
  while x < songs.length
    puts "#{x + 1}. #{songs[x]}"
    x = x + 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  invalid = true
  number = true

  songs.each do |song|
    if song == response
      invalid = false
      number = false
    end
  end

if number 
  z = 0
  while z < songs.length
    puts z
    number = response.to_i
    puts "number = #{number}"
    number = number - 1
    if z == number
      response = songs[z]
      invalid = false
    end
    z = z + 1
  end
end

  if invalid
    puts "Invalid input, please try again"
  else 
    puts "Playing #{response}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

