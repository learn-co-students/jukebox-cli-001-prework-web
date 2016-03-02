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

def list(array)
  array.each_index do |index|
    puts "#{index+1}. #{array[index]}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  song = gets.chomp
  found_song = false
  array.each_with_index do |x, index|
    if x == song
      puts "Playing #{x}"
      found_song = true
    elsif index+1 == song.to_i
      puts "Playing #{x}"
      found_song = true
    end
  end
  if !found_song
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  response = ""
  while response != "exit"
    puts "Please enter a command:"
    response = gets.chomp
    case response
      when "list"
        list(array)
      when "help"
        help
      when "play"
        play(array)
      when "exit"
        exit_jukebox
      else
        puts "Unknown command. Try again."
    end
  end
end