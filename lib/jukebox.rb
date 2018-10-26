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
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def invalid_command()
  puts "Invalid input, please try again"
end

def help()
  help_info = %(I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program)
  puts help_info
end

def play(songslist)
  puts "Please enter a song name or number:"
  input = gets.chomp

  #to_i will return 0 if input is non-numeric. 0 is also invalid song number,
  #so we can assume that 0 always represents invalid input
  input_num = input.to_i

  if input_num > 0 && input_num <= songslist.length
    puts "Playing #{songslist[input_num-1]}"
  elsif songslist.include?(input)
    puts "Playing #{input}"
  else
    invalid_command
  end
end

def list(songslist)
  songslist.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox()
  puts "Goodbye"
end


def run(songslist)
  loop do
    puts "Please enter a command:"
    cmd = gets.chomp

    case cmd
    when "help"
      help()
    when "play"
      play()
    when "list"
      list(songslist)
    when "exit"
      exit_jukebox()
      break
    else
      invalid_command()
    end
  end

end
