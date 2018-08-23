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
  puts " 
  I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
"
end

def list(songs)
  songs.each_with_index do |v, i|
    puts "#{i + 1}. #{v}"
  end
end


def play(songs)

  puts "Please enter a song name or number:"
  x = 3
  response = gets.chomp

  songs.each_with_index do |v, i|
    if response == v || response.to_i == i + 1
      x = 0
      puts "Playing #{v}"
      
    end
  end
  if x == 3 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
rply = "go"
until rply == "exit"
help
puts "Please enter a command:"
rply = gets.chomp

  if rply == "list"
    list(songs)
  elsif rply == "play"
    play(songs)
  elsif rply == "help"
    help
  elsif rply == "exit"
    exit_jukebox
  end
end
end



