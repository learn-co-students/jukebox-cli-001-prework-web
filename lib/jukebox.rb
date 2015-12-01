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

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit: exits this program"
end

def list (songs)
  counter = 1
  songs.each do |song|
    puts "#{counter}. #{song}"
    counter += 1
  end
end

def is_num (str)
  str.count("0-9") > 0
end

def play (songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  if is_num(selection[0..1])
    num = selection.to_i
    if num <= songs.length
      num-= 1
      puts "Playing #{songs[num]}"
      return true
    else
      puts "Invalid input, please try again"
      return false
    end
  end
  songs.each do |song_name|
    if selection.downcase == song_name.downcase
      puts "Playing #{song_name}"
      return true
    end
  end
  puts "Invalid input, please try again"
  return false
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  selection = ""
  loop do
    puts "Please enter a command:"
    selection = gets.chomp
    case selection
      when "help"
        # binding.pry
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      else
        puts "I didn't get that, please use 'help' to see a list of valid commands"
    end
  end
end
