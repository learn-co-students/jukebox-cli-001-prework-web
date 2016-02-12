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

def list(arr)
  arr.each_with_index {|song, i| puts "#{i + 1}. #{song}"}
end

def play(arr)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if choice.to_i.between?(1, arr.length)
    puts "Playing #{arr[choice.to_i - 1]}"
  elsif arr.one? {|song| song == choice}
    puts "Playing #{choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(arr)
  help
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    case command
    when "help"
      help
    when "list"
      list(arr)
    when "play"
      play(arr)
    when "exit"
      exit_jukebox
      break
    end 
  end
end