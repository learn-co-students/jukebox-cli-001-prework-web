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

def help
i = ["I accept the following commands:",
"- help : displays this help message",
"- list : displays a list of songs you can play",
"- play : lets you choose a song to play",
"- exit : exits this program"]
puts i
end

def list(array)
  array.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end

def play(array)
  puts "Please enter the number or name of the song you wish to play"
  selection = gets.chomp
  if selection.to_i > 0  && selection.to_i <= array.size
    puts "Playing #{array[selection.to_i - 1]}"
  elsif array.include?(selection)
    puts "Playing #{selection}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = false
  until command == true
    command = gets.chomp
    case command
    when "help"
      help
    when "list"
      list
    when "play"
      play
    when "exit"
      exit_jukebox
      command = true
    end
  end
end




